import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:ferry/ferry.dart';

import './graphql/pokemon_detail.data.gql.dart';
import './graphql/pokemon_detail.req.gql.dart';
import './pokemon_card.dart';

class PokemonDetailScreen extends StatelessWidget {
  final client = GetIt.I<Client>();

  final String id;

  PokemonDetailScreen({this.id});

  @override
  Widget build(BuildContext context) {
    return Query(
      client: client,
      queryRequest: PokemonDetail(
        buildVars: (vars) => vars..id = id,
      ),
      builder: (
        BuildContext context,
        QueryResponse<$PokemonDetail> response,
      ) {
        if (response.loading)
          return Scaffold(
              appBar: AppBar(),
              body: Center(child: CircularProgressIndicator()));

        final pokemon = response.data?.pokemon;

        return Scaffold(
          appBar: AppBar(
              title: Text(
            pokemon?.name,
          )),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              if (pokemon != null)
                PokemonCard(
                  pokemon: pokemon,
                ),
              Padding(
                padding: const EdgeInsets.all(8.0),
              ),
              Text(
                'Height',
                style: Theme.of(context).textTheme.title,
              ),
              if (pokemon != null) Text('min: ${pokemon.height.minimum}'),
              if (pokemon != null) Text('max: ${pokemon.height.maximum}'),
              Padding(
                padding: const EdgeInsets.all(8.0),
              ),
              Text(
                'Weight',
                style: Theme.of(context).textTheme.title,
              ),
              if (pokemon != null) Text('min: ${pokemon.weight.minimum}'),
              if (pokemon != null) Text('max: ${pokemon.weight.maximum}'),
            ],
          ),
        );
      },
    );
  }
}
