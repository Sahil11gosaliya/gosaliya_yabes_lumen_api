export function spinner() {


    function showLoader() {
        document.querySelector('.spinner', '.pos').classList.remove('hidden');
    }


    function hideLoader() {
        document.querySelector('.spinner', '.pos').classList.add('hidden');
    }

    showLoader();
    hideLoader();

};