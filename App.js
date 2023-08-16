/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow strict-local
 */

import React from 'react';
import {SafeAreaView, StyleSheet, Button, NativeModules} from 'react-native';

const App = () => {
  const {pangle} = NativeModules;

  const onPress = async () => {
    await pangle.rewardVideoOpen('980570511');
  };
  return (
    <SafeAreaView style={styles.root}>
      <Button title="view Ad" onPress={onPress} />
    </SafeAreaView>
  );
};

const styles = StyleSheet.create({
  root: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
});

export default App;
