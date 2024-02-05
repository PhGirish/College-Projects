<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="aboutUs.aspx.cs" Inherits="DentalFinal.aboutUs" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- case studies -->
	<section class="case_w3ls  py-lg-5">
		<div class="container py-5">
			<div class="text-center wthree-title pb-sm-5 pb-3">
				<h3 class="w3l-sub">WE LOVE TO SEE YOU SMILE</h4>
				<h4 class="sub-title py-3">We’re passionate about helping you experience a beautiful and healthy smile. <br />You can expect gentle and compassionate care with precision excellence.</h5>
			</div>
			<!-- case studies row -->
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="img1 img-grid  d-flex align-items-end justify-content-center p-3">
						<div class="img_text_w3ls">
							<h4>General Dentistry</h4>
							<span> </span>
							<p>From dental cleanings to emergencies, we can help you and your family achieve and maintain a healthy beautiful smile. </p>
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button1" runat="server" Text="Book Appointment" BackColor="#CCFFCC" ForeColor="Black" OnClick="Button1_Click" />
                            </p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 my-md-0 mt-4">
					<div class="img1 img2 img-grid  d-flex align-items-end justify-content-center p-3">
						<div class="img_text_w3ls">
							<h4>Cosmetic Dentistry</h4>
							<span> </span>
							<p>A beautiful smile is always in style. Feel more confident with a new smile that is as beautiful as it is healthy.</p>
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<asp:Button ID="Button2" runat="server" Text="Book Appointment" BackColor="#CCFFCC" ForeColor="Black" OnClick="Button2_Click" />
                            </p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 my-lg-0 mt-4">
					<div class="img1 img3 img-grid  d-flex align-items-end justify-content-center p-3">
						<div class="img_text_w3ls">
							<h4> Dental Implants</h4>
							<span> </span>
							<p>From beginning to end, your implant treatment is managed by one team working closely to ensure your care is consistent.</p>
                            <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button3" runat="server" Text="Book Appointment" BackColor="#CCFFCC" ForeColor="Black" OnClick="Button3_Click" />
                            </p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 mt-4">
					<div class="img1 img5 img-grid  d-flex align-items-end justify-content-center p-3">
						<div class="img_text_w3ls">
							<h4>Orthodontics</h4>
							<span> </span>
							<p> We offer Invisalign, wire braces and clear ceramic braces! Have convenient options to achieve the smile you’ve always wanted.</p>
                            <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button4" runat="server" Text="Book Appointment" BackColor="#CCFFCC" ForeColor="Black" OnClick="Button4_Click" />
                            </p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6  mt-4">
					<div class="img1 img4 img-grid  d-flex align-items-end justify-content-center p-3">
						<div class="img_text_w3ls">
							<h4>Teeth Whitening</h4>
							<span> </span>
							<p>Wake up to a bright smile with the best whitening solution on the market that gives professional results with little-to-no sensitivity.</p>
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button5" runat="server" Text="Book Appointment" BackColor="#CCFFCC" ForeColor="Black" OnClick="Button5_Click" />
                            </p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 mt-4">
					<div class="img1 img6 img-grid  d-flex align-items-end justify-content-center p-3">
						<div class="img_text_w3ls">
							<h4>Gum Training</h4>
							<span> </span>
							<p>We can cure gum disease and reverse gum recession with the latest advances in gum treatment. </p>
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button6" runat="server" Text="Book Appointment" BackColor="#CCFFCC" ForeColor="Black" OnClick="Button6_Click" />
                            </p>
						</div>
					</div>
				</div>
			</div>
			<!-- //case studies row -->
		</div>
	</section>
	<!-- //case studies -->
</asp:Content>
