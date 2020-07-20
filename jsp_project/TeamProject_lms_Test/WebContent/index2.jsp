<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/ixBand.js"></script>
<script type="text/javascript" src="js/ixSnack.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script type="module">
  import Vue from 'https://cdn.jsdelivr.net/npm/vue@2.6.0/dist/vue.esm.browser.js'
</script>
<style>
	input, textarea, button:focus, select {
		outline: none;
		resize: none;
	}
	
	input::placeholder, textarea::placeholder {
		color: #A0AEC0;
		opacity: 1;
	}
	
	select {
		-webkit-appearance: none;
		background: center right 12px/12px
			url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/1703172/shevron.png)
			no-repeat;
	}
	
	.group:hover .group-hover-block {
		display: block !important;
	}
</style>


</head>
<body>
	<div id="app" class="text-black antialiased">
		<div class="flex w-screen" style="max-width: 100vw;">
			<!-- MAIN CONTENT -->
			<div class="h-screen flex flex-col flex-1 overflow-scroll"
				v-if="!doShowFullScreenActors">
				<!-- Header -->
				<div class="h-10 flex px-3 items-center">
					<div class="w-3 h-3 mr-1 bg-gray-300 rounded-full"></div>
					<div class="w-3 h-3 mr-1 bg-gray-300 rounded-full"></div>
					<div class="w-3 h-3 mr-2 bg-gray-300 rounded-full"></div>
					<div class="mx-1 px-1 w-5 h-5 bg-gray-300 rounded"></div>
					<button
						class="px-2 ion-md-arrow-back text-xl rounded text-gray-400"></button>
					<button
						class="px-2 ion-md-arrow-forward text-xl rounded text-gray-400"></button>
					<div class="mx-1 px-1 w-12 h-3 bg-gray-300 rounded"></div>
					<div class="text-gray-400">/</div>
					<div class="mx-1 px-1 w-12 h-3 bg-gray-300 rounded"></div>
					<div class="flex-1"></div>
					<div class="mx-1 px-1 w-12 h-3 bg-gray-300 rounded"></div>
					<div class="mx-1 px-1 w-12 h-3 bg-gray-300 rounded"></div>
					<div class="mx-1 px-1 w-12 h-3 bg-gray-300 rounded"></div>
					<div class="mx-1 px-1 w-5 h-5 bg-gray-300 rounded"></div>
				</div>
				<!-- Content -->
				<div class="flex-1 flex">
					<div class="flex-1 px-8"
						:class="{'px-16': !doShowProjectDetails && !doShowActorDetails}">
						<div class="h-16"></div>
						<div class="text-3xl font-bold">The Camera-Stylo</div>
						<!-- Table -->
						<div>
							<!-- table controls -->
							<div class="flex items-center border-b py-2 mt-3">
								<div class="text-lg font-semibold mr-2">Films</div>
								<div class="mx-1 px-1 w-12 h-3 bg-gray-300 rounded"></div>
								<div class="flex-1"></div>
								<div class="mx-1 px-1 w-12 h-3 bg-gray-300 rounded"></div>
								<div class="mx-1 px-1 w-5 h-5 bg-gray-300 rounded"></div>
								<button
									class="ion-ios-more text-xl text-gray-600 mx-1 px-2 hover:bg-gray-200 rounded"
									@click="doShowMoreMenu = true"></button>
								<!-- more menu -->
								<div class="relative">
									<div class="fixed top-0 left-0 h-screen w-screen bg-white"
										style="opacity: 0.01" v-if="doShowMoreMenu"
										@click="doShowMoreMenu = false"></div>
									<div v-if="doShowMoreMenu"
										class="absolute bg-white w-48 shadow rounded text-sm"
										style="right: -12px; top: -32px;">
										<div class="mx-3 px-1 my-3 w-24 h-3 bg-gray-300 rounded"></div>
										<div class="mx-3 px-1 my-3 w-16 h-3 bg-gray-300 rounded"></div>
										<div class="mx-3 px-1 my-3 w-16 h-3 bg-gray-300 rounded"></div>
										<div class="mx-3 px-1 my-3 w-24 h-3 bg-gray-300 rounded"></div>
										<div
											class="flex items-center px-3 py-1 border-t border-b hover:bg-gray-200 cursor-pointer"
											@click="isInSidebarMode = !isInSidebarMode">
											<div>Split-screen</div>
											<div class="flex-1"></div>
											<div class="w-8 h-5 bg-gray-400 rounded-full flex"
												:class="{'justify-end bg-blue-500': isInSidebarMode}">
												<div
													class="h-5 w-5 rounded-full bg-white border-2 border-gray-400"
													:class="{'border-blue-500': isInSidebarMode}"></div>
											</div>
										</div>
										<div class="mx-3 px-1 my-3 w-16 h-3 bg-gray-300 rounded"></div>
										<div class="mx-3 px-1 my-3 w-24 h-3 bg-gray-300 rounded"></div>
									</div>
								</div>
								<div class="mx-1 px-1 w-12 h-6 bg-blue-400 rounded"></div>
							</div>
							<!-- table header -->
							<div class="flex border-b text-sm">
								<div class="flex-1 px-2 border-r py-3">
									<div class="w-16 h-2 bg-gray-300 rounded"></div>
								</div>
								<div class="flex-1 px-2 border-r py-3">
									<div class="w-16 h-2 bg-gray-300 rounded"></div>
								</div>
								<div class="flex-1 px-2 py-3">
									<div class="w-16 h-2 bg-gray-300 rounded"></div>
								</div>
								<div class="w-4"></div>
							</div>
							<!-- table content -->
							<div v-for="project, i in projects"
								class="flex border-b text-sm group items-center"
								:class="{'hover:bg-gray-200 cursor-pointer': isInSidebarMode, 'bg-gray-200': selectedProject === i}"
								@click="rowPressed(i)">
								<div class="flex-1 px-2 border-r py-2 flex item-center group ">
									<div class="flex-1">{{project.name}}</div>
									<button
										class="uppercase text-xs border rounded px-1 hidden group-hover-block"
										@click="openPressed(i)" v-if="!isInSidebarMode">Open</button>
								</div>
								<div class="flex-1 px-2 border-r py-2"
									:class="{'hover:bg-gray-200 cursor-pointer': !isInSidebarMode}">{{project.year}}</div>
								<div class="flex-1 px-2 py-2"
									:class="{'hover:bg-gray-200 cursor-pointer': !isInSidebarMode}">{{project.director}}</div>
								<div class="w-4">
									<div
										class="ion-ios-arrow-forward text-gray-700 hidden group-hover-block pl-1"
										v-if="isInSidebarMode"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- SIDEBAR 1 -->
			<div class="h-screen flex flex-col flex-1 overflow-scroll"
				:class="{'border-l': !doShowFullScreenActors}"
				v-if="doShowProjectDetails && isInSidebarMode">
				<!-- Header -->
				<div class="h-10 flex px-3 items-center">
					<button
						class="ion-md-close text-xl px-2 text-gray-700 hover:bg-gray-200 rounded"
						@click="doShowProjectDetails = false; selectedProject = null;"
						v-if="!doShowFullScreenActors"></button>
					<button
						class="ion-md-expand text-xl px-2 text-gray-700 hover:bg-gray-200 rounded mx-2"
						@click="doShowFullScreenActors = true"
						v-if="!doShowFullScreenActors"></button>
					<div class="flex items-center" v-if="doShowFullScreenActors">
						<div class="w-3 h-3 mr-1 bg-gray-300 rounded-full"></div>
						<div class="w-3 h-3 mr-1 bg-gray-300 rounded-full"></div>
						<div class="w-3 h-3 mr-2 bg-gray-300 rounded-full"></div>
						<div class="mx-1 px-1 w-5 h-5 bg-gray-300 rounded"></div>
					</div>
					<button
						class="px-2 ion-md-arrow-back text-xl rounded text-gray-400"
						:class="{'text-gray-700': doShowFullScreenActors, 'hover:bg-gray-200': doShowFullScreenActors}"
						@click="backPressedActors()"></button>
					<button
						class="px-2 ion-md-arrow-forward text-xl rounded text-gray-400"></button>
					<div class="mx-1 px-1 w-12 h-3 bg-gray-300 rounded"></div>
					<div class="text-gray-400">/</div>
					<div class="mx-1 px-1 w-12 h-3 bg-gray-300 rounded"></div>
					<div class="flex-1"></div>
					<div class="mx-1 px-1 w-12 h-3 bg-gray-300 rounded"></div>
					<div class="mx-1 px-1 w-12 h-3 bg-gray-300 rounded"></div>
					<div class="mx-1 px-1 w-12 h-3 bg-gray-300 rounded"></div>
					<div class="mx-1 px-1 w-5 h-5 bg-gray-300 rounded"></div>
				</div>
				<!-- Sidebar content -->
				<div class="flex-1 overflow-scroll">
					<div class="h-56 bg-cover bg-center"
						:style="{backgroundImage: 'url('+ projects[selectedProject].cover + ')'}"></div>
					<div class="px-8"
						:class="{'px-16': doShowFullScreenActors && !doShowActorDetails}">
						<div class="text-3xl font-bold mb-3 mt-5">{{projects[selectedProject].name}}</div>
						<!-- properties -->
						<div class="border-b pb-4 mb-4">
							<div class="flex items-center">
								<div class="w-24">
									<div class="mx-1 px-1 w-16 h-3 bg-gray-300 rounded"></div>
								</div>
								<div>{{projects[selectedProject].year}}</div>
							</div>
							<div class="flex items-center">
								<div class="w-24">
									<div class="mx-1 px-1 w-16 h-3 bg-gray-300 rounded"></div>
								</div>
								<div>{{projects[selectedProject].director}}</div>
							</div>
						</div>
						<!-- content -->
						<!-- Table -->
						<div class="pb-8">
							<!-- table controls -->
							<div class="flex items-center border-b py-2 mt-3">
								<div class="text-lg font-semibold mr-2">Cast</div>
								<div class="mx-1 px-1 w-12 h-3 bg-gray-300 rounded"></div>
								<div class="flex-1"></div>
								<div class="mx-1 px-1 w-12 h-3 bg-gray-300 rounded"></div>
								<div class="mx-1 px-1 w-5 h-5 bg-gray-300 rounded"></div>
								<button
									class="ion-ios-more text-xl text-gray-600 mx-1 px-2 hover:bg-gray-200 rounded"
									@click="doShowMoreMenuActors = true"></button>
								<!-- more menu -->
								<div class="relative">
									<div class="fixed top-0 left-0 h-screen w-screen bg-white"
										style="opacity: 0.01" v-if="doShowMoreMenuActors"
										@click="doShowMoreMenuActors = false"></div>
									<div v-if="doShowMoreMenuActors"
										class="absolute bg-white w-48 shadow rounded text-sm"
										style="right: -12px; top: -32px;">
										<div class="mx-3 px-1 my-3 w-24 h-3 bg-gray-300 rounded"></div>
										<div class="mx-3 px-1 my-3 w-16 h-3 bg-gray-300 rounded"></div>
										<div class="mx-3 px-1 my-3 w-16 h-3 bg-gray-300 rounded"></div>
										<div class="mx-3 px-1 my-3 w-24 h-3 bg-gray-300 rounded"></div>
										<div
											class="flex items-center px-3 py-1 border-t border-b hover:bg-gray-200 cursor-pointer"
											@click="isInSidebarModeActors = !isInSidebarModeActors">
											<div>Split-screen</div>
											<div class="flex-1"></div>
											<div class="w-8 h-5 bg-gray-400 rounded-full flex"
												:class="{'justify-end bg-blue-500': isInSidebarModeActors}">
												<div
													class="h-5 w-5 rounded-full bg-white border-2 border-gray-400"
													:class="{'border-blue-500': isInSidebarModeActors}"></div>
											</div>
										</div>
										<div class="mx-3 px-1 my-3 w-16 h-3 bg-gray-300 rounded"></div>
										<div class="mx-3 px-1 my-3 w-24 h-3 bg-gray-300 rounded"></div>
									</div>
								</div>
								<div class="mx-1 px-1 w-12 h-6 bg-blue-400 rounded"></div>
							</div>
							<!-- table header -->
							<div class="flex border-b text-sm">
								<div class="flex-1 px-2 border-r py-3">
									<div class="w-16 h-2 bg-gray-300 rounded"></div>
								</div>
								<div class="flex-1 px-2 border-r py-3">
									<div class="w-16 h-2 bg-gray-300 rounded"></div>
								</div>
								<div class="flex-1 px-2 py-3">
									<div class="w-16 h-2 bg-gray-300 rounded"></div>
								</div>
								<div class="w-4"></div>
							</div>
							<!-- table content -->
							<div v-for="actor, i in projects[selectedProject].actors"
								class="flex border-b text-sm group items-center"
								:class="{'hover:bg-gray-200 cursor-pointer': isInSidebarModeActors, 'bg-gray-200': selectedActor === i}"
								@click="rowPressedActors(i)">
								<div class="flex-1 px-2 border-r py-2 flex item-center group ">
									<div class="flex-1">{{actor.name}}</div>
									<button
										class="uppercase text-xs border rounded px-1 hidden group-hover-block"
										@click="openPressedActors(i)" v-if="!isInSidebarModeActors">Open</button>
								</div>
								<div class="flex-1 px-2 border-r py-2"
									:class="{'hover:bg-gray-200 cursor-pointer': !isInSidebarModeActors}">{{actor.role}}</div>
								<div class="flex-1 px-2 py-2"
									:class="{'hover:bg-gray-200 cursor-pointer': !isInSidebarModeActors}">{{actor.born}}</div>
								<div class="w-4">
									<div
										class="ion-ios-arrow-forward text-gray-700 hidden group-hover-block pl-1"
										v-if="isInSidebarModeActors"></div>
								</div>
							</div>
						</div>
						<div class="text-2xl font-bold pb-2">Plot</div>
						<textarea class="w-full" style="height: 700px;"
							v-model="projects[selectedProject].content"></textarea>
					</div>
				</div>
			</div>
			<!-- SIDEBAR 2 -->
			<div class="h-screen flex flex-col flex-1 overflow-scroll border-l"
				v-if="doShowActorDetails && isInSidebarModeActors">
				<!-- Header -->
				<div class="h-10 flex px-3 items-center">
					<button
						class="ion-md-close text-xl px-2 text-gray-700 hover:bg-gray-200 rounded"
						@click="doShowActorDetails = false; selectedActor = null;"></button>
					<div class="px-2 w-5 h-5 bg-gray-300 rounded"
						style="margin-left: .83rem; margin-right: .83rem;"></div>
					<button
						class="px-2 ion-md-arrow-back text-xl rounded text-gray-400"
						:class="{'text-gray-700': !doShowFullScreenActors, 'hover:bg-gray-200': !doShowFullScreenActors}"
						@click="backPressedActorDetails()"></button>
					<button
						class="px-2 ion-md-arrow-forward text-xl rounded text-gray-400"></button>
					<div class="mx-1 px-1 w-12 h-3 bg-gray-300 rounded"></div>
					<div class="text-gray-400">/</div>
					<div class="mx-1 px-1 w-12 h-3 bg-gray-300 rounded"></div>
					<div class="flex-1"></div>
					<div class="mx-1 px-1 w-12 h-3 bg-gray-300 rounded"></div>
					<div class="mx-1 px-1 w-12 h-3 bg-gray-300 rounded"></div>
					<div class="mx-1 px-1 w-12 h-3 bg-gray-300 rounded"></div>
					<div class="mx-1 px-1 w-5 h-5 bg-gray-300 rounded"></div>
				</div>
				<!-- Sidebar content -->
				<div class="flex-1 px-8 overflow-scroll">
					<div class="h-16"></div>
					<div class="text-3xl font-bold mb-3">{{projects[selectedProject].actors[selectedActor].name}}</div>
					<!-- properties -->
					<div class="border-b pb-4 mb-4">
						<div class="flex items-center">
							<div class="w-24">
								<div class="mx-1 px-1 w-16 h-3 bg-gray-300 rounded"></div>
							</div>
							<div>
								{{projects[selectedProject].actors[selectedActor].role}}</div>
						</div>
						<div class="flex items-center">
							<div class="w-24">
								<div class="mx-1 px-1 w-16 h-3 bg-gray-300 rounded"></div>
							</div>
							<div>
								{{projects[selectedProject].actors[selectedActor].born}}</div>
						</div>
					</div>
					<!-- content -->
					<div class="text-2xl font-bold pb-2">Bio</div>
					<textarea class="w-full" style="height: 700px;"
						v-model="projects[selectedProject].actors[selectedActor].bio"></textarea>
				</div>
			</div>
		</div>
		<!-- OVERLAY 1 -->
		<div v-if="doShowProjectDetails && !isInSidebarMode">
			<div class="fixed top-0 left-0 h-screen w-screen bg-black opacity-50"></div>
			<div
				class="fixed top-0 left-0 h-screen w-screen flex items-center justify-center pt-12 pb-16 px-4"
				@click="doShowProjectDetails = false; selectedProject = null">
				<div
					class="bg-white rounded w-full max-w-3xl shadow-lg h-full flex flex-col"
					@click.stop="">
					<!-- Overlay header -->
					<div class="h-10 flex px-3 items-center border-b border-gray-200">
						<div class="mx-1 px-1 w-5 h-5 bg-gray-300 rounded"></div>
						<div class="mx-1 px-1 w-12 h-3 bg-gray-300 rounded"></div>
						<div class="flex-1"></div>
						<div class="mx-1 px-1 w-12 h-3 bg-gray-300 rounded"></div>
						<div class="mx-1 px-1 w-12 h-3 bg-gray-300 rounded"></div>
						<div class="mx-1 px-1 w-12 h-3 bg-gray-300 rounded"></div>
						<div class="mx-1 px-1 w-5 h-5 bg-gray-300 rounded"></div>
					</div>
					<!-- Overlay content -->
					<div class="flex-1 overflow-scroll">
						<div class="h-56 bg-cover bg-center"
							:style="{backgroundImage: 'url('+ projects[selectedProject].cover + ')'}"></div>
						<div class="px-12">
							<div class="text-3xl font-bold mt-5 mb-3">{{projects[selectedProject].name}}</div>
							<!-- properties -->
							<div class="border-b pb-4 mb-4">
								<div class="flex items-center">
									<div class="w-24">
										<div class="mx-1 px-1 w-16 h-3 bg-gray-300 rounded"></div>
									</div>
									<div>{{projects[selectedProject].year}}</div>
								</div>
								<div class="flex items-center">
									<div class="w-24">
										<div class="mx-1 px-1 w-16 h-3 bg-gray-300 rounded"></div>
									</div>
									<div>{{projects[selectedProject].director}}</div>
								</div>
							</div>
							<!-- content -->
							<textarea class="w-full" style="height: 700px;"
								v-model="projects[selectedProject].content"></textarea>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- OVERLAY 2 -->
		<div v-if="doShowActorDetails && !isInSidebarModeActors">
			<div class="fixed top-0 left-0 h-screen w-screen bg-black opacity-50"></div>
			<div
				class="fixed top-0 left-0 h-screen w-screen flex items-center justify-center pt-12 pb-16 px-4"
				@click="doShowActorDetails = false; selectedActor = null">
				<div
					class="bg-white rounded w-full max-w-3xl shadow-lg h-full flex flex-col"
					@click.stop="">
					<!-- Overlay header -->
					<div class="h-10 flex px-3 items-center border-b border-gray-200">
						<div class="mx-1 px-1 w-5 h-5 bg-gray-300 rounded"></div>
						<div class="mx-1 px-1 w-12 h-3 bg-gray-300 rounded"></div>
						<div class="flex-1"></div>
						<div class="mx-1 px-1 w-12 h-3 bg-gray-300 rounded"></div>
						<div class="mx-1 px-1 w-12 h-3 bg-gray-300 rounded"></div>
						<div class="mx-1 px-1 w-12 h-3 bg-gray-300 rounded"></div>
						<div class="mx-1 px-1 w-5 h-5 bg-gray-300 rounded"></div>
					</div>
					<!-- Overlay content -->
					<div class="flex-1 px-12 overflow-scroll">
						<div class="h-16"></div>
						<div class="text-3xl font-bold mb-3">{{projects[selectedProject].actors[selectedActor].name}}</div>
						<!-- properties -->
						<div class="border-b pb-4 mb-4">
							<div class="flex items-center">
								<div class="w-24">
									<div class="mx-1 px-1 w-16 h-3 bg-gray-300 rounded"></div>
								</div>
								<div>
									{{projects[selectedProject].actors[selectedActor].role}}</div>
							</div>
							<div class="flex items-center">
								<div class="w-24">
									<div class="mx-1 px-1 w-16 h-3 bg-gray-300 rounded"></div>
								</div>
								<div>
									{{projects[selectedProject].actors[selectedActor].born}}</div>
							</div>
						</div>
						<!-- content -->
						<div class="text-2xl font-bold pb-2">Bio</div>
						<textarea class="w-full" style="height: 700px;"
							v-model="projects[selectedProject].actors[selectedActor].bio"></textarea>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>




<script>

var app = new Vue({
  el: '#app',
  data: {
    projects: [
      {
        name: 'Jules and Jim',
        year: '1962',
        director: 'François Truffaut',
        content: 'The film is set before, during, and after the Great War in several different parts of France, Austria, and Germany. Jules (Oskar Werner) is a shy writer from Austria who forges a friendship with the more extroverted Frenchman, Jim (Henri Serre). They share an interest in the world of the arts and the Bohemian lifestyle. At a slide show, they become entranced with a bust of a goddess and her serene smile and travel to see the ancient statue on an island in the Adriatic Sea. After encounters with several women, they meet the free-spirited, capricious Catherine (Jeanne Moreau), a doppelgänger for the statue with the serene smile. The three hang out together. Although she begins a relationship with Jules, both men are affected by her presence and her attitude toward life. Jim continues to be involved with Gilberte, usually seeing her apart from the others. A few days before war is declared, Jules and Catherine move to Austria to get married. Both men serve during the war, on opposing sides; each fears throughout the conflict the potential for facing the other or learning that he might have killed his friend.',
        cover: 'https://m.media-amazon.com/images/M/MV5BNDFkNGI1Y2EtMzM5My00NDhkLTkzN2EtZTE1NDgzOGM5MzM5XkEyXkFqcGdeQXVyMzY1MzQyOTY@._V1_.jpg',
        actors: [
          {
            name: 'Jeanne Moreau',
            role: 'Catherine',
            born: '1928',
            bio: 'When people gave Louis Malle credit for making a star of Jeanne Moreau in Elevator to the Gallows (1958) immediately followed by The Lovers (1958), he would point out that Moreau by that time had already been "recognized as the prime stage actress of her generation." She had made it to the Comédie Française in her 20s. She had appeared in B-movie thrillers with Jean Gabin and Ascenseur was in that genre. The technicians at the film lab went to the producer after seeing the first week of dailies for Ascenseur and said: "You must not let Malle destroy Jeanne Moreau". Malle explained: "She was lit only by the windows of the Champs Elysées. That had never been done. Cameramen would have forced her to wear a lot of make-up and they would put a lot of light on her, because, supposedly, her face was not photogenic". This lack of artifice revealed Moreau\'s "essential qualities: she could be almost ugly and then ten seconds later she would turn her face and would be incredibly attractive. But she would be herself".'
          },
          {
            name: 'Oskar Werner',
            role: 'Jules',
            born: '1922',
            bio: 'Remote, somewhat morose and, as a result, intriguing, Viennese talent Oskar Werner was born in 1922, not far from the birthplace of "Waltz King" Johann Strauss, and christened Oskar Josef Bschließmayer. His parents divorced when he was fairly young.\n\nWhile growing up, Oskar found performing in school plays helped draw out a deep yearning to act. As a teenager, Oskar was further tempted when his uncle managed to find him some un-credited roles in a couple of German and Austrian war-era films.'
          },
          {
            name: 'Henri Serre',
            role: 'Jim',
            born: '1931',
            bio: 'Henri Serre was born on February 26, 1931 in Sete, Hérault, France as Henri Jean René Serre. He is an actor and writer, known for Jules and Jim (1962), Ces flics étranges venus d\'ailleurs (1979) and The Fire Within (1963).'
          },
          {
            name: 'Vanna Urbino',
            role: 'Gilberte',
            born: '1929',
            bio: 'Vanna Urbino was born on March 18, 1929 in Florence, Tuscany, Italy. She is an actress, known for Jules and Jim (1962), La gatta (1958) and The Story of Dr. Louise (1949).'
          },
          {
            name: 'Serge Rezvani',
            role: 'Albert',
            born: '1928',
            bio: 'Serge Rezvani was born in 1928 in France. He has been married to Marie-José Nat since September 30, 2005.'
          },
        ],
      },
      {
        name: 'Breathless',
        year: '1960',
        director: 'Jean-Luc Godard',
        content: 'Michel (Jean-Paul Belmondo) is a youthful dangerous criminal who models himself on the film persona of Humphrey Bogart. After stealing a car in Marseille, Michel shoots and kills a policeman who has followed him onto a country road. Penniless and on the run from the police, he turns to an American love interest Patricia (Jean Seberg), a student and aspiring journalist, who sells the New York Herald Tribune on the boulevards of Paris. The ambivalent Patricia unwittingly hides him in her apartment as he simultaneously tries to seduce her and call in a loan to fund their escape to Italy. Patricia says she is pregnant, probably with Michel\'s child. She learns that Michel is on the run when questioned by the police. Eventually she betrays him, but before the police arrive she tells Michel what she has done. He is somewhat resigned to a life in prison, and does not try to escape at first. The police shoot him in the street and, after a prolonged death run, he dies “à bout de souffle” (out of breath).',
        cover: 'https://m.media-amazon.com/images/M/MV5BYmU4YWY0NDUtY2I2OC00YzY5LWJlY2ItMTk4NWY2M2M1ZDljXkEyXkFqcGdeQXVyNjUwMzI2NzU@._V1_SY1000_CR0,0,1454,1000_AL_.jpg',
        actors: [
          {
            name: 'Jean Seberg',
            role: 'Patricia Franchini',
            born: '1938',
            bio: 'Jean Dorothy Seberg was born in Marshalltown, Iowa, to Dorothy Arline (Benson), a substitute teacher, and Edward Waldemar Seberg, a pharmacist. Her father was of Swedish descent and her mother was of English and German ancestry.\n\nOne month before her eighteenth birthday, Jean landed the title role in Otto Preminger\'s Saint Joan (1957) after a much-publicized contest involving some 18,000 hopefuls. The failure of that film and the only moderate success of her next, Bonjour Tristesse (1958), combined to stall Seberg\'s career, until her role in Jean-Luc Godard\'s landmark feature, Breathless (1960), brought her renewed international attention. Seberg gave a memorable performance as a schizophrenic in the title role of Robert Rossen\'s Lilith (1964) opposite Warren Beatty and went on to appear in over 30 films in Hollywood and Europe.'
          },
          {
            name: 'Jean-Paul Belmondo',
            role: 'Michel Poiccard / Laszlo Kovacs',
            born: '1933',
            bio: 'The son of the renowned French sculptor Paul Belmondo, he studied at Conservatoire National Superieur d\'Art Dramatique (CNSAD); after the minor stage performances he made his screen debut in A piedi... a cavallo... in automobile (1957) but the episodes with his participation were cut before release. However, the breakthrough role in Jean-Luc Godard\'s Breathless (1960) made him one of the key figures in the French New Wave. Since mid-60s he completely switched to commercial mainstream pictures and became a big comedy and action star in France. Following the example of Alain Delon he founded his own production company Cerito named after his grandmother\'s maiden name. In 1989 he was awarded Cesar for his performance in Una vita non basta (1988) . Recently he returned to stage performing in the Theatre Marigny in Paris. He still appears in the movies but not so often as before preferring mostly dramatic roles. The president of France distinguished him with order of Legion of Honour. Belmondo has daughter Florence and son Paul. His elder daughter Patricia died in a fire in 1993. None of his children became actors though you could have seen his son Paul in the episodic role in Una vita non basta (1988).'
          },
          {
            name: 'Daniel Boulanger',
            role: 'Police Inspector Vital',
            born: '1922',
            bio: 'Daniel Boulanger was born on January 24, 1922 in Compiègne, Oise, France as Daniel Michel Auguste Boulanger. He was a writer and actor, known for That Man from Rio (1964), The Joker (1960) and Breathless (1960). He died on September 27, 2014 in Paris, France.'
          },
          {
            name: 'Henri-Jacques Huet',
            role: 'Antonio Berrutti',
            born: '1930',
            bio: 'Henri-Jacques Huet was born on March 27, 1930 in Paris, France as Henri Jacques Charles Paul Huet. He was an actor, known for Breathless (1960), Au théâtre ce soir (1966) and Claudine (1978). He died on June 4, 2009 in Nice, Alpes-Maritimes, France.'
          },
          {
            name: 'Roger Hanin',
            role: 'Carl Zubart',
            born: '1925',
            bio: 'Roger Hanin was born on October 20, 1925 in Algiers, Alger, France as Roger Jacob Lévy. He was an actor and writer, known for Breathless (1960), Commissario Navarro (1989) and Il protettore (1974). He was married to Christine Gouze-Rénal and Lisette Barucq. He died on February 11, 2015 in Paris, France.'
          },
        ],
      },
      {
        name: 'My Night at Maud\'s',
        year: '1969',
        director: 'Éric Rohmer',
        content: 'Jean-Louis, a solitary and serious engineer, has taken a job in Clermont-Ferrand where he knows nobody. Attending a Catholic church, he sees a young blonde woman and without knowing anything about her is convinced that she will become his wife. In the street he sees Vidal, an old Marxist friend now a university lecturer, who invites him to a concert the next evening. After the event, Vidal tells Jean-Louis he is going to see a friend and persuades him to come as well.\n\nThey arrive at the flat of Maud, a paediatrician who is recently divorced. The three talk and drink, until Maud suggests that falling snow has made the drive to Jean-Louis\' mountain village unsafe and he should stay. Vidal, who had hoped to stay, leaves. After further drink and talk, Maud reveals that there is only the one bed, which she gets into naked, and suggests that Jean-Louis join her. He eventually does, keeping his clothes on, but resists her advances. Initially hurt, she gets over the rejection and in the morning invites him to join her later for a walk in the snow.',
        cover: 'https://m.media-amazon.com/images/M/MV5BNzgwNmFkOGEtY2U2MC00MTUxLTgxYmItYmQ2NDBkNmExYWVjXkEyXkFqcGdeQXVyNDkzNTM2ODg@._V1_SY1000_CR0,0,654,1000_AL_.jpg',
        actors: [
          {
            name: 'Jean-Louis Trintignant',
            role: 'Jean-Louis',
            born: '1930',
            bio: 'Born 1930 in Piolenc in south France as son of a wealthy industrialist. Studied law in Aix-en-Provence. Started theatrical acting in 1950, but was regarded untalented at first, until Roger Vadim discovered him for the movies. When the press stalked him 1956 because of rumors of an affair with Brigitte Bardot his partner in ...And God Created Woman (1956), he fled into the army. Ten years later he had his first big success with A Man and a Woman (1966). Since then he has starred in more than 100 movies, with a special talent for the dark characters like murderers or jealous husbands. Today he prefers theater to movies.'
          },
          {
            name: 'Françoise Fabian',
            role: 'Maud',
            born: '1933',
            bio: 'Françoise Fabian was born on May 10, 1933 in Algiers, Alger, France as Michele Cortes De Leon y Fabianera. She is an actress, known for My Night at Maud\'s (1969), Belle de Jour (1967) and Happy New Year (1973). She was previously married to Marcel Bozzuffi and Jacques Becker.'
          },
          {
            name: 'Marie-Christine Barrault',
            role: 'Françoise',
            born: '1944',
            bio: 'Marie-Christine Barrault was born on March 21, 1944 in Paris, France. She is an actress and writer, known for Marie Curie, une femme honorable (1991), My Night at Maud\'s (1969) and Cugino cugina (1975).'
          },
          {
            name: 'Antoine Vitez',
            role: 'Vidal',
            born: '1930',
            bio: 'Antoine Vitez was born on December 20, 1930 in Paris, France. He is known for his work on My Night at Maud\'s (1969), Les Thibault (1972) and Apri bene le orecchie (1979). He died on April 30, 1990 in Paris.'
          },
          {
            name: 'Léonide Kogan',
            role: 'Concert Violinist',
            born: '1924',
            bio: 'Léonide Kogan was born on November 14, 1924 in Dnepropetrovsk, Russia as Leonid Borisovich Kogan. He was an actor, known for My Night at Maud\'s (1969) and Nicolo Paganini (1982). He died on December 17, 1982 in Moscow, Russia.'
          },
        ],
      },
      {
        name: 'Le Beau Serge',
        year: '1958',
        director: 'Claude Chabrol',
        content: 'François (Jean-Claude Brialy), a successful yet sickly young man, returns to his home town Sardent after a long absence. He finds his friend Serge (Gérard Blain) who has become a wretched alcoholic, unsatisfied with his life in the village. Serge had hoped to leave the village to study, but had to stay to marry Yvonne after she was pregnant. The death of their stillborn child did not help. (Serge has become an angry, bitter figure not unlike the roles of James Dean, refusing to face reality and adulthood.) At the time of arrival of François, Yvonne is again pregnant. François finds himself on the one hand at odds with the provincial village life and on the other hand compelled to help Serge. The fact that they are both entangled in affairs with Marie (Bernadette Lafont) makes things more complicated. At the end, the birth of Serge and Yvonne\'s second child seems to provide a slight possibility of success.',
        cover: 'https://m.media-amazon.com/images/M/MV5BYzVhYmU5MWUtMjU5Yy00YTdhLThjNzQtMDU3MTk4N2U3NTNlXkEyXkFqcGdeQXVyMDI3OTIzOA@@._V1_.jpg',
        actors: [
          {
            name: 'Gérard Blain',
            role: 'Serge',
            born: '1930',
            bio: 'Gérard Blain was born on October 23, 1930 in Paris, France. He was an actor and director, known for Hatari! (1962), The Friends (1971) and The Pelican (1974). He was married to Monique Sobieski, Bernadette Lafont and Estella Blain. He died on December 17, 2000 in Paris.'
          },
          {
            name: 'Jean-Claude Brialy',
            role: 'François Baillou',
            born: '1933',
            bio: 'One of the most popular and respected actors to come from the French "New Wave" film movement, Jean-Claude Brialy was born to a military family, which included one brother, in French colonial Algeria on March 30, 1933. Residing in various places while his father, a colonel with the French Army, went through the paces of his career, Brialy attended military school in 1946 and also worked in the theatre as a youth. He studied dramatics at a conservatory in Strasbourg, France, the Saint-Etienne Episcopal College.'
          },
          {
            name: 'Michèle Méritz',
            role: 'Yvonne',
            born: '1923',
            bio: 'Michèle Méritz was born on September 24, 1923 in Paris, France as Micheline Rosa Mitz. She was an actress, known for War of the Buttons (1962), Les Cousins (1959) and Classe Tous Risques (1960). She died on May 28, 1998 in Carcassonne, Aude, France.'
          },
          {
            name: 'Bernadette Lafont',
            role: 'Marie',
            born: '1938',
            bio: 'Bernadette Lafont was born at the Protestant Health Home of Nîmes in Gard, the only child of a pharmacist and a housewife from the Cévennes. Her mother always wanted a boy to name Bernard and, once she gave birth to a girl, she enjoyed to hold this against all the catholics she knew as the proof that their God either was blind or didn\'t exist.\n\nOften dressed as a boy and nicknamed Bernard, Bernadette nevertheless had a great relationship with her parents. Having spent part of her childhood in Saint-Geniès-de-Malgoirès, she returned to Nîmes where she took ballet lessons at the local Opera House. She proved to be a gifted student and she did three little tours and about twenty galas there. An extroverted girl with a fervent imagination, she used to spend her holidays at the Cévennes family mansion playing dress-up with her friend Annie, along whom she used to pretend to be an actress from an imaginary West End Club, working in Italian cinema: doing this started to win her a lot of male attention. She also began to develop a passion for film from an early age, adopting Brigitte Bardot and Marina Vlady as role models.'
          },
          {
            name: 'Claude Cerval',
            role: 'The priest',
            born: '1921',
            bio: 'Claude Cerval was born on February 21, 1921 in Paris, France as André Marcel Gabriel Leloup. He was an actor, known for Belle de Jour (1967), Classe Tous Risques (1960) and Jacquou le croquant (1969). He died on July 25, 1972 in Paris.'
          },
        ],
      },
      {
        name: 'Paris Belongs to Us',
        year: '1961',
        director: 'Jacques Rivette',
        content: 'The film opens with the literature student Anne, who is reading Shakespeare when she hears sounds of distress in the next room. There she finds a Spanish girl who says her brother has just been killed by dark forces. Anne then meets up with her own brother Pierre, who takes her to a party held by some of his friends.\n\nInitially bored and knowing nobody, she gradually becomes fascinated by mysterious interactions around her. Juan, an anti-Franco refugee from Spain, has recently died from a knife wound, some think suicide. Philip, an unsteady American refugee from McCarthyism, gets drunk and slaps a smartly-dressed woman called Terry, accusing her of causing Juan\'s death by breaking up with him.',
        cover: 'https://m.media-amazon.com/images/M/MV5BNWM4ODJjYzctMDQ5OS00MTcyLWJhZDYtMzZhNWRhNmFkOTJjXkEyXkFqcGdeQXVyNzc1MjM1ODM@._V1_.jpg',
        actors: [
          {
            name: 'Betty Schneider',
            role: 'Anne Goupil',
            born: '1934',
            bio: 'Betty Schneider was born in 1934 in Lens, France as Elisabeth Amsterdamer. She is an actress, known for Classe Tous Risques (1960), Paris Belongs to Us (1961) and A Bomb for a Dictator (1957).'
          },
          {
            name: 'Giani Esposito',
            role: 'Gerard Lenz',
            born: '1930',
            bio: 'Giani Esposito was born on August 22, 1930 in Etterbeek, Belgium. He was an actor, known for Le chevalier Tempête (1967), I miserabili (1958) and The Sea Pirate (1966). He was married to Pascale Petit. He died on January 1, 1974 in Neuilly-sur-Seine, Hauts-de-Seine, France.'
          },
          {
            name: 'Françoise Prévost',
            role: 'Terry Yordan',
            born: '1929',
            bio: 'Françoise Prévost was born on January 13, 1929 in Paris, France. She was an actress and writer, known for The Three Musketeers (1953), I Promised to Pay (1961) and I sequestrati di Altona (1962). She died on November 30, 1997 in Paris.'
          },
          {
            name: 'Daniel Crohem',
            role: 'Philip Kaufman',
            born: '1925',
            bio: 'Daniel Crohem was born on December 11, 1925 in Heuringhem, France. He was an actor, known for Le Doulos (1962), Le brigate del tigre (1974) and Ballad for a Hoodlum (1963). He died on July 23, 2016 in Paris, France.'
          },
          {
            name: 'François Maistre',
            role: 'Pierre Goupil',
            born: '1925',
            bio: 'François Maistre was born on May 14, 1925 in Demigny, Saône-et-Loire, France as François Charles Maistre. He was an actor, known for The Phantom of Liberty (1974), Le brigate del tigre (1974) and The Discreet Charm of the Bourgeoisie (1972). He was married to Aurore Chabrol and Anne-Marie Coffinet. He died on May 16, 2016 in Sevran, Seine-Saint-Denis, France.'
          },
        ],
      },
    ],
    selectedProject: null,
    doShowProjectDetails: false,
    doShowMoreMenu: false,
    isInSidebarMode: true,
    // secondLevel
    selectedActor: null,
    doShowActorDetails: false,
    doShowMoreMenuActors: false,
    isInSidebarModeActors: false,
    doShowFullScreenActors: false,
  },
  
  methods: {
    // PROJECTS
    openPressed (index) {
      this.selectedProject = index
      this.doShowProjectDetails = true
    },
    rowPressed (index) {
      if (this.isInSidebarMode) {
        this.selectedProject = index
        this.doShowProjectDetails = true
        this.doShowActorDetails = false
        this.selectedActor = null
      }
    },
    // ACTORS
    openPressedActors (index) {
      this.selectedActor = index
      this.doShowActorDetails = true
    },
    rowPressedActors (index) {
      if (this.isInSidebarModeActors) {
        this.selectedActor = index
        this.doShowActorDetails = true
        if (!this.doShowFullScreenActors) {
          this.doShowProjectDetails = false
        }
      }
    },
    backPressedActors () {
      if (this.doShowFullScreenActors) {
        this.doShowActorDetails = false
        this.doShowProjectDetails = false
        this.doShowFullScreenActors = false
        this.selectedProject = null
      }
      this.selectedActor = null
    },
    // ACTOR
    backPressedActorDetails () {
      if (!this.doShowFullScreenActors) {
        this.doShowActorDetails = false
        this.doShowProjectDetails = true
        this.selectedActor = null
      }
    }
  }
})




</script>