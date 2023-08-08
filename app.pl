use Mojolicious::Lite;

# Route for the home page
get '/' => sub {
    my $c = shift;
    $c->render(text => 'Hello, World!');
};

# Start the Mojolicious application
app->start;
