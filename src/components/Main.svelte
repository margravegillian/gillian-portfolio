<script>
    import Step from "./Step.svelte";
    let steps =[
        {name: 'Software Inventory', icon: 'fa-solid fa-code', href:"https://github.com/urvaius"},
        {name: 'Moonstone', icon: 'fa-regular fa-moon',href:"https://github.com/urvaius/Moonstone3.App"},
        {name: 'Games', icon: 'fa-solid fa-hat-wizard', href:"https://github.com/urvaius"},
    ];
    let benefits = [
        {name: 'An Information Security Engineer', description: 'Design, implement, and maintain security infrastructure, including firewalls, intrusion detection/prevention systems, antivirus software, and encryption protocols',image:'images/cyber.png'},
        {name: 'A self taught developer', description: 'I started programming on the commodor 64 when I was 12 years old. I have been continuing to learn programming my whole life.',image:'images/commodorebook.jpg'},
        {name: 'A motorcycle enthusiast', description: 'I enjoy riding motorcycles and doing track days with my son!!',image:'images/GilandEzra.jpg'}

    ]
</script>

<main class="flex flex-col flex-1 p-4">
    <section id="introPage" class="grid grid-cols-1 lg:grid-cols-2 gap-10 py-8 sm:py-14">
        <div class="flex flex-col lg:justify-center text-center lg:text-left gap-6 md:gap-8 lg:gap-10">
            <h2 class="font-semibold text-4xl sm:text-5xl md:text-6xl">
                <span class="poppins text-pink-600">Gillian</span> Arneson <br/> Information Security
                <span class="poppins text-pink-600">Engineer</span>
            </h2>
            <p class="text-base sm:text-lg md:text-xl">
                My <span class="text-pink-600">favorite tech</span> includes C#, Python, Node.js, ,Metasploit, Monogame & Docker!
            </p>


            <button class="blueShadow mx-auto lg:mr-auto lg:ml-0 text-base sm:text-lg md:text-xl poppins relative overflow-hidden px-6 py-3 group rounded-full bg-white text-slate-950"
            >
            <a href="mailto:margravegillian@gmail.com"
                target="_blank">

                <div class="absolute top-0 right-full w-full h-full bg-pink-800 opacity-20 group-hover:translate-x-full z-0 duration-200 cursor-pointer" 
                                
                />
                <h4 class="relative z-9">Get in touch &rarr;</h4>
                

            </button>
           
        </div>
        <div class="relative shadow-2xl grid place-items-center">
            <!-- svelte-ignore a11y-img-redundant-alt -->
            <img 
            src={"images/profile3.png"}
            alt="Profile image" 
            class="object-cover z-[2] max-h-[70vh]"/>
        </div>
    </section>


    <section id="projects" class="py-20 lg:py-32 flex flex-col gap-24">
        <div class="flex flex-col gap-2 text-center">
            <h6 class="text-lg sm:text-xl md:text-2xl">
                A few of my creative endeavors.

            </h6>
            <h3 class="font-semibold text-3xl sm:text-4xl md:text-5xl">
                Curious to <span class="popping text-pink-600">see </span>my work?
                
            </h3>
           
        </div>
       <!--  <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ"
        target="_blank" class="mx-auto px-4 py-2 rounded-md border border-solid border-white flex items-center gap-2 -mb-4 sm:-mb-0 -mt-10 hover:border-violet-700
        duration-200">
            <i class="fa-regular fa-circle-play"></i>
            <p>Watch the video!</p>
        </a> -->
        <div class="grid grid-cols-1 lg:grid-cols-3 gap-12 lg:gap-10">
            <Step step={steps[0]} >
                <p>Software Inventory <strong class="text-pink-600"> I have built a fullstack software inventory system using c# blazor and SQLserver. I enjoy working on fullstack projects</strong></p>
                </Step>
            <Step step={steps[1]}>
                
                <p> Moonstone is simple android app using <strong class="text-pink-600">c# MAUI. It has a flashlight, and soundboard</strong></p>
                </Step>
            <Step step={steps[2]}>
                <p>Games <strong class="text-pink-600"> I love working on game development. Though I tend to go from framework to framework trying new things. I would like to work on something for the long term soon</strong></p>


            </Step>
        </div>



    </section>
    <section 
    id="about" 
    class="py-20 pt-10 lg:pt-16 lg:py-32 flex flex-col gap-16 sm:gap-20 md:gap-24 relative"
    >
        <div 
            class="flex flex-col gap-2 text-center relative before:absolute before:top-0 before:left-0 before:w-2/3 before:h-1.5 before:bg-pink-800 after:absolute after:bottom-0 after:right-0 after:w-2/3 after:h-1.5 after:bg-pink-800 py-4"
            >

        <h6 class="text-lg sm:text-xl md:text-2xl">
            Would you like to know more? Everyone's doing there part...

        </h6>
        <h3 class="font-semibold text-3xl sm:text-4xl md:text-5xl">
            A bit <span class="poppins text-pink-600">about</span> me.
        </h3>
        </div>
        <p class="mx-auto poppins font-semibold text-lg sm:text-xl md:text-2xl">
            I am . . .
        </p>
        <div class="flex flex-col gap-20 w-full mx-auto max-w-[800px]">
            {#each benefits as benefit, index}
            <div class="flex gap-6 sm:gap-8">
                <p 
                class="poppins text-4xl sm:text-5xl md:text-6xl text-slate-500 font-semibold"
                >
                    0{index + 1}
                </p>
                <div class="flex flex-col gap-6 sm:gap-8">
                    <h3 class="text-2xl sm:text-3xl md:text-5xl">
                        {benefit.name}
                    </h3>
                    <p>{benefit.description}</p>
                    <div class="relative shadow-2xl grid place-items-center">
                     <!-- svelte-ignore a11y-img-redundant-alt -->
                     <img src={benefit.image}
                             alt="image" 
                        class="object-cover z-[2] max-h-[70vh]"/>
                     </div>

                     
                </div>

               
            </div>
            {/each}
        </div>



    </section>
</main>