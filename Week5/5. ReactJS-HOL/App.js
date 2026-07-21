// src/App.js
import React from 'react';
import CohortDetails from './CohortDetails';

function App() {
  const cohorts = [
    { name: 'Batch A', startDate: '22-Feb-2022', status: 'ongoing' },
    { name: 'Batch B', startDate: '10-Sep-2021', status: 'completed' },
    { name: 'Batch C', startDate: '24-Dec-2021', status: 'completed' },
    { name: 'Batch D', startDate: '22-Feb-2022', status: 'ongoing' },
  ];

  return (
    <div>
      <h2>Cohorts Details</h2>
      {cohorts.map((cohort, index) => (
        <CohortDetails key={index} cohort={cohort} />
      ))}
    </div>
  );
}

export default App;