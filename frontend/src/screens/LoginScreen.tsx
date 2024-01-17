import { StatusBar, StyleSheet, Text, View } from 'react-native'

const LoginScreen = () => {
  return (
    <View style={styles.screenContainer}>
      <StatusBar />
      <Text>LoginScreen</Text>
    </View>
  )
}
export default LoginScreen
const styles = StyleSheet.create({
  screenContainer:{
    backgroundColor: "white"
  }
})