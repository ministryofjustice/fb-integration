# Fb::Integration

This is a repo that spin up the form builder platform containers.

## Clone

    $ git clone git@github.com:ministryofjustice/fb-integration.git

Install dependencies with:

    $ bundle

## Setup all containers

    $ ./bin/container --install --all

## Update a specific container


The following command will just rebuild the container:

    $ ./bin/container --submitter

The following command will install a copy local submitter and rebuild the container:

    $ ./bin/container --submitter-local

The following command will install a copy of submitter from github and
rebuild the container:

    $ ./bin/container --submitter --install

For other options run:

    $ ./bin/container --help

## Configuration file

In order for the repo knows the container name and the github repo, it was
create with a config file as fundamental. For more details see
config_file.rb.sample.

## Testing

And then execute:

    $ bundle exec rspec

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
