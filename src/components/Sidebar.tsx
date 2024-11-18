// src/components/Sidebar.tsx
import React from 'react';
import styles from '../styles/app.module.css';  // Importing the styles

interface SidebarProps {
  onTableSelect: (table: string) => void;
}

const Sidebar: React.FC<SidebarProps> = ({ onTableSelect }) => {
  const tables = [
    { name: 'Employee', endpoint: 'employee' },
    { name: 'Attendance', endpoint: 'attendance' },
    { name: 'Payroll', endpoint: 'payroll' },
  ];

  return (
    <div className={styles.sidebar}>
      <h3>Tables</h3>
      <ul>
        {tables.map((table) => (
          <li key={table.name} onClick={() => onTableSelect(table.endpoint)}>
            {table.name}
          </li>
        ))}
      </ul>
    </div>
  );
};

export default Sidebar;
