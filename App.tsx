import { ClientProvider } from './src/providers/ClientProvider';
import { Main } from './src/components/Main';

export default function App() {
  return (
    <ClientProvider>
      <Main />
    </ClientProvider>
  );
}
