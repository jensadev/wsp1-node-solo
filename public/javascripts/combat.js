const ratio = document.querySelector('#ratio');
const ratioLabel = document.querySelector('#ratio-label');
ratio.addEventListener('change', function(e) {
  ratioLabel.textContent = 'Ratio: ' + ratio.value;
}, false);

const instance = axios.create({
  baseURL: 'http://localhost:3000',
});

const fight = document.querySelector('#fight');
const combatResult = document.querySelector('#combat-result');

fight.addEventListener('click', function(e) {
  e.preventDefault();

  instance.post('/combat/resolve', {
    ratio: ratio.value
  })
  .then(function (response) {
    console.log(response);
    combatResult.textContent += JSON.stringify(response.data.result[0]);
  })
  .catch(function (error) {
      console.log(error);
  });
}, false);