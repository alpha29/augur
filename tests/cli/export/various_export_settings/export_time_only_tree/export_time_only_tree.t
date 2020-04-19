
  $ TEST_DATA_DIR="$TESTDIR"
  $ mkdir -p "$TMP/out"

  $ augur export v2 --tree $TEST_DATA_DIR/in/tree_temporal.nwk --node-data $TEST_DATA_DIR/in/time_only_branch_lengths.json --metadata $TEST_DATA_DIR/in/metadata.tsv --colors $TEST_DATA_DIR/../zika/config/colors.tsv --auspice-config $TEST_DATA_DIR/../zika/config/auspice_config_v2.json --title "Temporal-only tree" --output $TMP/out/v2_time-only-tree.json >/dev/null
  $ echo $?
  0
  $ diff -u $TEST_DATA_DIR/expected/v2_time-only-tree.json $TMP/out/v2_time-only-tree.json
  $ echo $?
  0