// import styles from '../styles/app.module.css'


// function App() {

//   return (
//     <>
//     <div className={styles.main}>
//       <div className={styles.sidebar}>

//       </div>
//       <div className={styles.content}>
//         <h2>Please select a table to view.</h2>
//       </div>
//     </div>
//     </>
//   )
// }

// export default App


// src/pages/App.tsx
import React, { useState } from 'react';
import axios from 'axios';
import Sidebar from '../components/Sidebar';
import Table from '../components/Table';
import Loading from '../components/Loading';
import Error from '../components/Error';
import styles from '../styles/app.module.css';

const App: React.FC = () => {
  const [selectedTable, setSelectedTable] = useState<string>('');
  const [tableContent, setTableContent] = useState<any[]>([]);
  const [loading, setLoading] = useState<boolean>(false);
  const [error, setError] = useState<string>('');

  // Fetch data from the backend
  const fetchTableData = async (table: string) => {
    setLoading(true);
    setError('');
    try {
      const response = await axios.get(`http://127.0.0.1:8000/api/${table}/`);
      setTableContent(response.data);
    } catch (error) {
      setError('Failed to fetch data. Please try again later.' + error);
    } finally {
      setLoading(false);
    }
  };

  // Handle table selection
  const handleTableSelect = (table: string) => {
    setSelectedTable(table);
    fetchTableData(table);
  };

  return (
    <div className={styles.main}>
      <div className={styles.sidebar}>
        <Sidebar onTableSelect={handleTableSelect} />
      </div>
      <div className={styles.content}>
        {loading && <Loading />}
        {error && <Error message={error} />}
        {selectedTable && !loading && !error && (
          <>
            <h2>{selectedTable.charAt(0).toUpperCase() + selectedTable.slice(1)} Data:</h2>
            <Table data={tableContent} />
          </>
        )}
      </div>
    </div>
  );
};

export default App;
