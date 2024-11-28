document.getElementById('careerForm').addEventListener('submit', function (e) {
    e.preventDefault();

    const subject = document.getElementById('subject').value.trim();

    fetch('careerData.json')
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .then(careerData => {
          
            if (careerData[subject]) {
                const careerInfo = careerData[subject];
                document.getElementById('result').innerHTML = `
                    <h2>Career Path: ${careerInfo.futurescope}</h2>
                    <p>Entrance Exam: ${careerInfo.entranceExam}</p>
                    <p>Average Course Cost: ₹${careerInfo.avgCourseCost}</p>
                    <p>Expected Fresher Salary: ₹${careerInfo.salaryGrowth}</p>
                    <h3>Top Colleges</h3>
                    <ul>${careerInfo.topColleges.map(college => `<li>${college}</li>`).join('')}</ul>
                `;
            } else {
                document.getElementById('result').innerHTML = `<p>Subject not found.</p>`;
            }
        })
        .catch(error => {
            console.error('Error fetching data:', error);
            document.getElementById('result').innerHTML = `<p>Error fetching data. Please try again later.</p>`;
        });
});