# Use perl modules
use Mojolicious::Lite;
use DBI;

# Database configuration
my $database = 'dpo_page';
my $host     = '127.0.0.1';
my $port     = 3306;
my $username = 'root';
my $password = 'root';

# Establish database connection
my $dbh = DBI->connect(
    "DBI:MariaDB:database=$database;host=$host;port=$port",
    $username,
    $password,
    { RaiseError => 1 }
);

get '/' => sub {
    my $c = shift;

    # Query the database
    my $query = $dbh->prepare('SELECT *');
    $query->execute();

    # Fetch results
    my $results = $query->fetchall_arrayref({});
    $query->finish();

    # Render the results
    $c->render(json => $results);
};

# post '/submit' => sub {
#     my $c = shift;

#     # Get form data
#     my $name  = $c->param('name');
#     my $email = $c->param('email');

#     # Save data to the database or perform other operations
#     $c->render(json => { success => 1 });
# };

# Route for the home page
# get '/' => sub {
#     my $c = shift;
#     $c->render(text => 'Hello, World!');
# };


# Start the Mojolicious application
app->start;
