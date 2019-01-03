import React from 'react';
import {AppRegistry, Text, View} from 'react-native';

class RootContainer extends React.Component {
    render() {
        return (
            <View style={{ backgroundColor: 'red' }}>
                <Text style={{ fontWeight: 'bold' }}>End in sight</Text>
            </View>
        );
    }
}

// Module name
AppRegistry.registerComponent('RootContainer', () => RootContainer);
