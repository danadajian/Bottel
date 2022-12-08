import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View } from 'react-native';
import { trpc } from './src/utils/trpc';

export default function App() {
  const { data } = trpc.getData.useQuery({ message: 'hello world' });

  return (
    <View style={styles.container}>
      <Text>{data}</Text>
      <StatusBar style="auto" />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center'
  }
});
