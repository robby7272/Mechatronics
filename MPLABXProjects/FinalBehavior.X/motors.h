
/*******************************************************************************
 * PUBLIC FUNCTION PROTOTYPES                                                  *
 ******************************************************************************/
#define FORWARD 1
#define REVERSE 0
#define CLOCKWISE 1
#define COUNTERCLOCKWISE 0
#define LEFT 1
#define RIGHT 0
#define FRONT 2
#define BACK 3
#define FR 0
#define FL 1
#define BR 2
#define BL 3
/**
 * @Function MOTORS_Init(void)
 * @param None
 * @return void
 * @brief  Initializes motors to neutral position
 * @author Max Dunne, 2013.08.25 */
void MOTORS_Init(void);

// Individual Motor Control with FORWARD or REVERSE
void MOTOR_1(unsigned int duty, uint8_t direction);
void MOTOR_2(unsigned int duty, uint8_t direction);
void MOTOR_3(unsigned int duty, uint8_t direction);
void MOTOR_4(unsigned int duty, uint8_t direction);


// Moves Bot FORWARD or REVERSE
void Move_Straight(unsigned int duty, uint8_t direction);

// Tank Turn CLOCKWISE or COUNTERCLOCKWISE
void Tank_Turn(unsigned int duty, uint8_t direction);

// Moves Bot LEFT of RIGHT
void Move_Sideways(unsigned int duty, uint8_t direction);

// Arc turn either CLOCKWISE or COUNTERCLOCKWISE with either FRONT, BACK, LEFT, or RIGHT 2 wheels
void Arc_Turn(unsigned int duty, uint8_t direction, uint8_t wheels);

// Moves Bot Diagonally FR, FL, BR, or BL
void Move_Diagonal(unsigned int duty, uint8_t direction);

// Stops all Motors
void Motors_Stop(void);



