const game = {
    state: {
        screen: 'start',
        ingredients: new Map(), // { id: { name: '', selected: false, frame: 1 } }
        scoreSok: 0,
        selectedShape: null,
        cookingMethod: null,
        container: null,
    },

    // 에셋 설정
    assets: {
        ingredients: [
            { id: 'pig', name: '돼지고기', sprite: 'DefineSprite_161' },
            { id: 'dubu', name: '두부', sprite: 'DefineSprite_168' },
            { id: 'manle', name: '마늘', sprite: 'DefineSprite_171' },
            { id: 'cheese', name: '치즈', sprite: 'DefineSprite_174' },
            { id: 'bigpa', name: '대파', sprite: 'DefineSprite_177' },
            { id: 'yangpa', name: '양파', sprite: 'DefineSprite_180' },
            { id: 'pepper', name: '고추', sprite: 'DefineSprite_183' },
            // 추가 재료들...
        ],
        shapes: [
            { id: 1, name: '일반 만두', frame: 1 },
            { id: 2, name: '긴 만두', frame: 2 },
            { id: 3, name: '둥근 만두', frame: 3 },
            { id: 4, name: '정석 만두', frame: 4 }, // Winning Shape
        ],
        methods: [
            { id: 'steaming', name: '찌기', frame: 1 },
            { id: 'frying', name: '굽기', frame: 2 },
            { id: 'boiling', name: '삶기', frame: 3 },
        ],
        containers: [
            { id: 'steamer', name: '찜통', frame: 2 }, // OR 4
            { id: 'pan', name: '프라이팬', frame: 2 },
            { id: 'pot', name: '냄비', frame: 3 },
        ]
    },

    init() {
        this.bindEvents();
        this.renderIngredients();
        this.renderShapes();
        this.renderMethods();
        this.renderContainers();
    },

    bindEvents() {
        document.getElementById('btn-start').addEventListener('click', () => this.changeScreen('ingredients'));
        document.getElementById('btn-to-folding').addEventListener('click', () => this.changeScreen('folding'));
        document.getElementById('btn-to-cooking').addEventListener('click', () => this.changeScreen('cooking'));
        document.getElementById('btn-evaluate').addEventListener('click', () => this.evaluate());
        document.getElementById('btn-restart').addEventListener('click', () => location.reload());
    },

    changeScreen(screenId) {
        document.querySelectorAll('.screen').forEach(s => s.classList.remove('active'));
        document.getElementById(`screen-${screenId}`).classList.add('active');
        this.state.screen = screenId;

        // 배경 업데이트 (필요한 경우)
        if (screenId === 'ingredients') {
            document.getElementById('screen-ingredients').style.backgroundImage = "url('고향만두_전체/frames/41.png')";
        } else if (screenId === 'folding') {
            document.getElementById('screen-folding').style.backgroundImage = "url('고향만두_전체/frames/86.png')";
        }
    },

    renderIngredients() {
        const grid = document.querySelector('.ingredients-grid');
        this.assets.ingredients.forEach(item => {
            const btn = document.createElement('div');
            btn.className = 'ingredient-btn';
            btn.id = `ing-${item.id}`;
            btn.innerHTML = `
                <img src="고향만두_전체/sprites/${item.sprite}/1.png" alt="${item.name}">
                <span>${item.name}</span>
            `;
            btn.addEventListener('click', () => this.toggleIngredient(item.id, item.sprite));
            grid.appendChild(btn);
        });
    },

    renderShapes() {
        const grid = document.querySelector('.shape-grid');
        this.assets.shapes.forEach(shape => {
            const btn = document.createElement('div');
            btn.className = 'shape-btn';
            btn.id = `shape-${shape.id}`;
            // 89, 91, 93, 94번 프레임 등이 모양 PNG임
            const frameMap = { 1: 89, 2: 91, 3: 93, 4: 94 };
            btn.innerHTML = `
                <img src="고향만두_전체/frames/${frameMap[shape.id]}.png" alt="${shape.name}">
                <span>${shape.name}</span>
            `;
            btn.addEventListener('click', () => this.selectShape(shape.id));
            grid.appendChild(btn);
        });
    },

    renderMethods() {
        const container = document.getElementById('method-options');
        this.assets.methods.forEach(method => {
            const btn = document.createElement('button');
            btn.className = 'option-btn';
            btn.innerText = method.name;
            btn.addEventListener('click', () => this.selectMethod(method.id));
            container.appendChild(btn);
        });
    },

    renderContainers() {
        const container = document.getElementById('container-options');
        this.assets.containers.forEach(item => {
            const btn = document.createElement('button');
            btn.className = 'option-btn';
            btn.innerText = item.name;
            btn.addEventListener('click', () => this.selectContainer(item.id));
            container.appendChild(btn);
        });
    },

    toggleIngredient(id, sprite) {
        const current = this.state.ingredients.get(id) || { selected: false };
        const newState = !current.selected;

        this.state.ingredients.set(id, { selected: newState });

        const btn = document.getElementById(`ing-${id}`);
        const img = btn.querySelector('img');

        if (newState) {
            btn.classList.add('selected');
            img.src = `고향만두_전체/sprites/${sprite}/2.png`;
            this.state.scoreSok++;
        } else {
            btn.classList.remove('selected');
            img.src = `고향만두_전체/sprites/${sprite}/1.png`;
            this.state.scoreSok--;
        }
    },

    selectShape(id) {
        this.state.selectedShape = id;
        document.querySelectorAll('.shape-btn').forEach(b => b.classList.remove('selected'));
        document.getElementById(`shape-${id}`).classList.add('selected');
    },

    selectMethod(id) {
        this.state.cookingMethod = id;
        document.querySelectorAll('#method-options .option-btn').forEach(b => b.classList.remove('selected'));
        event.target.classList.add('selected');
    },

    selectContainer(id) {
        this.state.container = id;
        document.querySelectorAll('#container-options .option-btn').forEach(b => b.classList.remove('selected'));
        event.target.classList.add('selected');
    },

    evaluate() {
        const { selectedShape, scoreSok, cookingMethod, container } = this.state;

        const isRightShape = selectedShape === 4;
        const hasEnoughIngredients = scoreSok >= 8;

        let isCorrectCooking = false;
        if (cookingMethod === 'frying' && container === 'pan') isCorrectCooking = true;
        if (cookingMethod === 'steaming' && (container === 'steamer')) isCorrectCooking = true;
        if (cookingMethod === 'boiling' && container === 'pot') isCorrectCooking = true;

        const success = hasEnoughIngredients && isRightShape && isCorrectCooking;

        this.showResult(success);
    },

    showResult(success) {
        this.changeScreen('result');
        const title = document.getElementById('result-title');
        const desc = document.getElementById('result-desc');

        if (success) {
            title.innerText = "성공! 명가의 맛입니다.";
            desc.innerText = "당신이 빚은 만두는 고향의 향수를 불러일으키는 최고의 맛입니다.";
            document.getElementById('screen-result').style.backgroundImage = "url('고향만두_전체/frames/177.png')";
        } else {
            title.innerText = "실패... 뭔가 부족합니다.";
            desc.innerText = "재료나 조리 방식이 잘못된 것 같습니다. 다시 도전해 보세요.";
            document.getElementById('screen-result').style.backgroundImage = "url('고향만두_전체/frames/175.png')";
        }
    }
};

window.onload = () => game.init();
