customElements.define("<++>",
class Element extends HTMLElement{

	static get observedAttributes(){
		return [""]
	}

	constructor(){
		super();this.attachShadow({mode:"open"})

		//this.count = this.getAttribute("init")
	}

	template(){
		let template = document.createElement("template");
		 template.innerHTML =`

		<++>

		${this.style()}
		`;

		return template;
	}

	style(){
		return `
		
		<++>

		`;
	}


	update(){
		//this.setAttribute("init",this.count.toString())
		//this.shadowRoot.querySelector("span").childNodes[1].textContent = this.count
	}

	connectedCallback(){
		this.shadowRoot.append(this.template().content.cloneNode(true));

		//	Logica
		this.shadowRoot.addEventListener("click",(e) => {
			return;
		})
	}

	attributeChangedCallback(name, oldValue, newValue){
			//this.count = parseInt(newValue)
	}
})

