# Event Management

## Project Overview

The **Event Management** project is a web application designed to facilitate the organization and management of various types of events such as birthdays, corporate events, and more. The application enables users to book events, manage customer inquiries, and view event details.

## Features

- **Event Booking:** Users can book events by selecting categories and providing details.
- **Customer Management:** Manage customer inquiries and details.
- **Event Listings:** View, add, update, and delete event details.
- **Ratings and Reviews:** Collect and display feedback for events.
- **Authentication:** Login system for administrators and customers.

## Technologies Used

- **Backend:** Java (Servlets, JSP)
- **Frontend:** HTML, CSS, JavaScript
- **Database:** MySQL
- **Server:** Apache Tomcat
- **Tools:** Eclipse IDE

## Prerequisites

- Java Development Kit (JDK) 1.8 or later
- Apache Tomcat 9 or later
- MySQL Server 8.0 or later
- An IDE such as Eclipse or IntelliJ IDEA

## Installation and Setup

1. **Clone the Repository:**
   ```bash
   git clone <repository-url>
   cd EventManagement
   ```

2. **Configure Database:**
   - Create a MySQL database named `event_management`.
   - Import the provided `event_management.sql` file to set up the required tables and sample data.

3. **Update Database Configuration:**
   - Update the `db.properties` file in the project with your MySQL credentials:
     ```properties
     db.url=jdbc:mysql://localhost:3306/event_management
     db.username=your-username
     db.password=your-password
     ```

4. **Deploy to Tomcat:**
   - Copy the project folder to the Tomcat `webapps` directory.
   - Start the Tomcat server.

5. **Access the Application:**
   Open your browser and navigate to `http://localhost:8080/EventManagement`.

## Project Structure

```
Event
├── build/classes
├── src/main
│   ├── java
│   │   ├── controller
│   │   │   ├── AddToCart.java
│   │   │   ├── DeleteEnq.java
│   │   │   ├── DeleteUser.java
│   │   │   ├── Flow.java
│   │   ├── model
│   │       ├── Dproduct.java
│   │       ├── EnqList.java
│   │       ├── Enquiry.java
│   │       ├── Events.java
│   │       ├── Ratings.java
│   │       ├── User.java
│   │       ├── customer.java
├── webapp
│   ├── META-INF
│   ├── WEB-INF
│   ├── ViewClients.jsp
│   ├── about.jsp
│   ├── adHeader.jsp
│   ├── adHome.jsp
│   ├── addDelEvent.jsp
│   ├── addEventHeader.jsp
│   ├── birthday.png
│   ├── birthday.webp
│   ├── bookedEvents.jsp
│   ├── contact.jsp
│   ├── contact1.jsp
│   ├── corporate.jpeg
│   ├── download.png
│   ├── enquiryList.jsp
│   ├── eventBooking.jsp
│   ├── eventCategories.jsp
│   ├── eventStatus.jsp
│   ├── events.jsp
│   ├── footer.jsp
│   ├── forgotPassword.jsp
│   ├── gallery.jsp
│   ├── header.jsp
│   ├── index.jsp
│   ├── login.jsp
│   ├── loginHeader.jsp
│   ├── map.jsp
│   ├── pdf.jsp
│   ├── review.css
│   ├── review.jsp
│   ├── service.jsp
│   ├── style.css
│   ├── tt.png
│   ├── viewEvents.jsp
│   ├── viewReview.jsp
│   └── xyz.jpg
├── README.md
```

## Usage

- **Admin Panel:**
  - Manage events, view inquiries, and respond to customer reviews.
- **Customer Interface:**
  - Book events, browse event categories, and view event status.

## Contributing

1. Fork the repository.
2. Create a feature branch: `git checkout -b feature-name`.
3. Commit your changes: `git commit -m 'Add feature name'`.
4. Push to the branch: `git push origin feature-name`.
5. Open a pull request.


## Contact

For any queries or suggestions, please reach out to:
- **Email:** admin@eventmanagement.com
- **GitHub:** [Shivuakkur](https://github.com/Shivuakkur)
