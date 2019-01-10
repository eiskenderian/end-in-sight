/**
 * EndInSightApp is a React Native App
 * https://github.com/facebook/react-native
 * 
 * Generated with the TypeScript template
 * https://github.com/emin93/react-native-template-typescript
 * 
 * @format
 */

import React, { Component } from 'react';
import { Text, View } from 'react-native';

interface EndInSightProps {
  height: number;
  width: number;
}

export default class EndInSightApp extends Component<EndInSightProps> {
  render() {
      return (
          <View style={{ backgroundColor: 'red', height: this.props.height, width: this.props.width, flex: 1, justifyContent: 'center', alignItems: 'center' }}>
              <Text style={{ fontWeight: 'bold' }}>End in sight</Text>
          </View>
      );
  }
}
