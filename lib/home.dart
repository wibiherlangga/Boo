import 'dart:ui';
import 'package:boo/example_candidate_model.dart';
import 'package:boo/widgets/example_card.dart';
import 'package:boo/widgets/clear_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final CardSwiperController _controller = CardSwiperController();

  final cards = candidates.map(ExampleCard.new).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            floating: false,
            pinned: true,
            elevation: 0,
            leadingWidth: 96,
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () => {},
                  icon: const Icon(Icons.menu),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () => {},
                  icon: const Icon(
                    Icons.electric_bolt,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
            title: const Text(
              'BOO',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () => {},
                icon: const Icon(Icons.switch_access_shortcut_add),
              ),
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () => {},
                icon: const Icon(Icons.menu_open),
              ),
            ],
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.tealAccent,
                            padding: const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 30,
                            )),
                        onPressed: () => {},
                        child: const Text(
                          'JIWA BARU',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        onPressed: () => {},
                        child: const Text(
                          'TEMUKAN',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 2.4,
                    child: CardSwiper(
                      isDisabled: true,
                      allowedSwipeDirection:
                          const AllowedSwipeDirection.only(down: true),
                      controller: _controller,
                      cardsCount: cards.length,
                      numberOfCardsDisplayed: 1,
                      threshold: 1,
                      backCardOffset: const Offset(0, -40),
                      padding: const EdgeInsets.all(5.0),
                      cardBuilder: (
                        context,
                        index,
                        horizontalThresholdPercentage,
                        verticalThresholdPercentage,
                      ) =>
                          cards[index],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClearButton(
            icon: Icons.rocket_launch,
            color: Colors.lightGreen,
            onTap: () => {},
          ),
          ClearButton(
            icon: Icons.close,
            color: Colors.red,
            onTap: () => _controller.swipe(CardSwiperDirection.left),
          ),
          ClearButton(
            icon: Icons.favorite,
            color: Colors.pinkAccent,
            onTap: () => _controller.swipe(CardSwiperDirection.right),
          ),
          ClearButton(
            icon: Icons.favorite,
            color: Colors.green,
            onTap: () => _controller.swipe(CardSwiperDirection.right),
          ),
          ClearButton(
            icon: Icons.send,
            color: Colors.lightGreen,
            onTap: () => {},
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 14, sigmaY: 14),
          child: Container(
            color: Colors.transparent,
            height: 72,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.green,
                  size: 35,
                ),
                Icon(
                  Icons.add_circle,
                  color: Colors.black,
                  size: 35,
                ),
                Icon(
                  Icons.travel_explore_sharp,
                  color: Colors.black54,
                  size: 35,
                ),
                Icon(
                  Icons.chat,
                  color: Colors.black54,
                  size: 35,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
