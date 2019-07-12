# tile38-lambda-layer
A AWS Lambda layer for Tile38

## Usage

### Layer content creation

You can run `./createLayer.sh` in the root directory of this repository to create the neccessary folder structure.

### Deployment

To create the Tile38 Lambda layer in your AWS account, you can use

```bash
$ sls deploy
```

This will create a layer with the `dev` stage in the `us-east-1` region. To use other stage names or regions, you can run

```bash
$ sls deploy --stage $STAGE --region $REGION
```

where `$STAGE` can be any stage name you want, and `$REGION` one of the [official AWS regions](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-available-regions).

### Using the layer

You can now use the stack output `Tile38LambdaLayer` in other stacks to reference the newly created Tile38 Lambda layer.

For example, if you use Serverless, you can reference if via 

```yaml
functions:
  myfunction:
    ...
    layers:
      - ${cf:tile38-lambda-layer-dev.Tile38LambdaLayer}
```

Note that the `dev` in the variable above is the stage of your layer service.
