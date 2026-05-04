import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'PokéInfo',
    debugShowCheckedModeBanner: false,
    home: const HalamanUtama(),
  ));
}

class Pokemon {
  final int id;
  final String nama;
  final String tipe;
  final String deskripsi;
  final String ability;
  final String kelemahan;
  final String role;
  final int hp, atk, def, spatk, spdef, spd;

  const Pokemon({
    required this.id,
    required this.nama,
    required this.tipe,
    required this.deskripsi,
    required this.ability,
    required this.kelemahan,
    required this.role,
    required this.hp,
    required this.atk,
    required this.def,
    required this.spatk,
    required this.spdef,
    required this.spd,
  });
}

const List<Pokemon> dataPokemon = [
  Pokemon(id: 1, nama: 'Bulbasaur', tipe: 'Grass / Poison', deskripsi: 'Bulbasaur mengandalkan keseimbangan antara offense dan defense. Tanaman di punggungnya menyimpan energi matahari.', ability: 'Overgrow', kelemahan: 'Fire, Ice, Flying, Psychic', role: 'Support / Tank', hp: 45, atk: 49, def: 49, spatk: 65, spdef: 65, spd: 45),
  Pokemon(id: 6, nama: 'Charizard', tipe: 'Fire / Flying', deskripsi: 'Charizard adalah attacker cepat dengan damage tinggi terutama Special Attack. Berbahaya tapi lemah terhadap Rock.', ability: 'Blaze', kelemahan: 'Rock, Water, Electric', role: 'Special Sweeper', hp: 78, atk: 84, def: 78, spatk: 109, spdef: 85, spd: 100),
  Pokemon(id: 9, nama: 'Blastoise', tipe: 'Water', deskripsi: 'Blastoise adalah tank kuat dengan defense tinggi. Cocok untuk bertahan lama dan memberikan tekanan stabil.', ability: 'Torrent', kelemahan: 'Electric, Grass', role: 'Tank / Wall', hp: 79, atk: 83, def: 100, spatk: 85, spdef: 105, spd: 78),
  Pokemon(id: 25, nama: 'Pikachu', tipe: 'Electric', deskripsi: 'Pikachu adalah Pokémon cepat dengan serangan listrik yang efektif melawan Water dan Flying.', ability: 'Static', kelemahan: 'Ground', role: 'Fast Attacker', hp: 35, atk: 55, def: 40, spatk: 50, spdef: 50, spd: 90),
  Pokemon(id: 94, nama: 'Gengar', tipe: 'Ghost / Poison', deskripsi: 'Gengar adalah glass cannon dengan Special Attack tinggi dan kecepatan luar biasa.', ability: 'Cursed Body', kelemahan: 'Ghost, Dark, Psychic', role: 'Special Sweeper', hp: 60, atk: 65, def: 60, spatk: 130, spdef: 75, spd: 110),
  Pokemon(id: 149, nama: 'Dragonite', tipe: 'Dragon / Flying', deskripsi: 'Dragonite adalah pseudo-legendary dengan stat tinggi di hampir semua aspek.', ability: 'Inner Focus', kelemahan: 'Ice, Rock, Dragon, Fairy', role: 'All-rounder', hp: 91, atk: 134, def: 95, spatk: 100, spdef: 100, spd: 80),
  Pokemon(id: 143, nama: 'Snorlax', tipe: 'Normal', deskripsi: 'Snorlax adalah tank dengan HP besar. Sulit dikalahkan dan bisa jadi tembok tim.', ability: 'Thick Fat', kelemahan: 'Fighting', role: 'Tank / Wall', hp: 160, atk: 110, def: 65, spatk: 65, spdef: 110, spd: 30),
  Pokemon(id: 133, nama: 'Eevee', tipe: 'Normal', deskripsi: 'Eevee unik karena punya banyak evolusi (Eeveelutions). Fleksibel sesuai kebutuhan tim.', ability: 'Adaptability', kelemahan: 'Fighting', role: 'Flexible / Support', hp: 55, atk: 55, def: 50, spatk: 45, spdef: 65, spd: 55),
  Pokemon(id: 134, nama: 'Vaporeon', tipe: 'Water', deskripsi: 'Tank spesial dengan HP besar dan sustain tinggi.', ability: 'Water Absorb', kelemahan: 'Electric, Grass', role: 'Special Tank', hp: 130, atk: 65, def: 60, spatk: 110, spdef: 95, spd: 65),
  Pokemon(id: 135, nama: 'Jolteon', tipe: 'Electric', deskripsi: 'Salah satu Pokémon tercepat. Cocok untuk strike cepat.', ability: 'Volt Absorb', kelemahan: 'Ground', role: 'Fast Sweeper', hp: 65, atk: 65, def: 60, spatk: 110, spdef: 95, spd: 130),
  Pokemon(id: 136, nama: 'Flareon', tipe: 'Fire', deskripsi: 'Damage fisik tinggi tapi agak lambat.', ability: 'Flash Fire', kelemahan: 'Water, Rock, Ground', role: 'Physical Attacker', hp: 65, atk: 130, def: 60, spatk: 95, spdef: 110, spd: 65),
  Pokemon(id: 448, nama: 'Lucario', tipe: 'Fighting / Steel', deskripsi: 'Fighter dengan aura power, bisa mixed attacker.', ability: 'Steadfast', kelemahan: 'Fire, Fighting, Ground', role: 'Mixed Sweeper', hp: 70, atk: 110, def: 70, spatk: 115, spdef: 70, spd: 90),
  Pokemon(id: 658, nama: 'Greninja', tipe: 'Water / Dark', deskripsi: 'Ninja Pokémon super cepat dengan ability unik (Protean).', ability: 'Protean', kelemahan: 'Electric, Grass, Bug, Fairy, Fighting', role: 'Speed Sweeper', hp: 72, atk: 95, def: 67, spatk: 103, spdef: 71, spd: 122),
  Pokemon(id: 68, nama: 'Machamp', tipe: 'Fighting', deskripsi: 'Petarung kuat dengan 4 tangan.', ability: 'No Guard', kelemahan: 'Flying, Psychic, Fairy', role: 'Physical Attacker', hp: 90, atk: 130, def: 80, spatk: 65, spdef: 85, spd: 55),
  Pokemon(id: 65, nama: 'Alakazam', tipe: 'Psychic', deskripsi: 'Glass cannon dengan kecerdasan tinggi.', ability: 'Magic Guard', kelemahan: 'Bug, Ghost, Dark', role: 'Special Sweeper', hp: 55, atk: 50, def: 45, spatk: 135, spdef: 95, spd: 120),
  Pokemon(id: 130, nama: 'Gyarados', tipe: 'Water / Flying', deskripsi: 'Agresif dan kuat secara fisik.', ability: 'Intimidate', kelemahan: 'Electric, Rock', role: 'Physical Sweeper', hp: 95, atk: 125, def: 79, spatk: 60, spdef: 100, spd: 81),
  Pokemon(id: 248, nama: 'Tyranitar', tipe: 'Rock / Dark', deskripsi: 'Tank + attacker kuat, summon sandstorm.', ability: 'Sand Stream', kelemahan: 'Fighting, Ground, Bug, Steel, Water, Grass, Fairy', role: 'Tank / Sweeper', hp: 100, atk: 134, def: 110, spatk: 95, spdef: 100, spd: 61),
];

// =================== HALAMAN UTAMA ===================

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({super.key});
  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  String cari = '';

  @override
  Widget build(BuildContext context) {
    final hasil = dataPokemon
        .where((p) => p.nama.toLowerCase().contains(cari.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Pokémon'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              decoration: const InputDecoration(
                labelText: 'Cari nama pokémon',
                border: OutlineInputBorder(),
              ),
              onChanged: (v) => setState(() => cari = v),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: hasil.length,
              itemBuilder: (ctx, i) {
                final p = hasil[i];
                return ListTile(
                  leading: Image.network(
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${p.id}.png',
                    width: 48,
                    errorBuilder: (_, __, ___) => const Icon(Icons.catching_pokemon),
                  ),
                  title: Text(p.nama),
                  subtitle: Text(p.tipe),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 14),
                  onTap: () => Navigator.push(
                    ctx,
                    MaterialPageRoute(
                      builder: (_) => HalamanDetail(pokemon: p),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// =================== HALAMAN DETAIL ===================

class HalamanDetail extends StatelessWidget {
  final Pokemon pokemon;
  const HalamanDetail({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pokemon.nama),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // gambar tengah
            Center(
              child: Image.network(
                'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${pokemon.id}.png',
                height: 150,
                errorBuilder: (_, __, ___) =>
                    const Icon(Icons.catching_pokemon, size: 80),
              ),
            ),
            const SizedBox(height: 10),

            Text(pokemon.nama,
                style: const TextStyle(
                    fontSize: 22, fontWeight: FontWeight.bold)),
            Text('Tipe: ${pokemon.tipe}',
                style: const TextStyle(fontSize: 14, color: Colors.grey)),

            const Divider(),

            const Text('Deskripsi',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text(pokemon.deskripsi),

            const Divider(),

            const Text('Info',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text('Ability   : ${pokemon.ability}'),
            Text('Role      : ${pokemon.role}'),
            Text('Kelemahan : ${pokemon.kelemahan}'),

            const Divider(),

            const Text('Base Stats',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            _statRow('HP', pokemon.hp),
            _statRow('ATK', pokemon.atk),
            _statRow('DEF', pokemon.def),
            _statRow('SP.ATK', pokemon.spatk),
            _statRow('SP.DEF', pokemon.spdef),
            _statRow('SPD', pokemon.spd),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _statRow(String label, int val) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        children: [
          SizedBox(
            width: 60,
            child: Text(label,
                style: const TextStyle(fontSize: 12, color: Colors.grey)),
          ),
          SizedBox(
            width: 30,
            child: Text('$val',
                style: const TextStyle(
                    fontSize: 12, fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: LinearProgressIndicator(
              value: val / 160,
              minHeight: 8,
              backgroundColor: Colors.grey.shade200,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
