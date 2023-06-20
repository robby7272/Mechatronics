

/*******************************************************************************
 * PUBLIC FUNCTION PROTOTYPES                                                  *
 ******************************************************************************/

/**
 * @Function SHOOTING_Init(void)
 * @param None
 * @return void
 * @brief  Initializes servo to neutral position
 * @author Max Dunne, 2013.08.25 */
void SHOOTING_Init(void);

/**
 * @Function SHOOTING_Shoot(void)
 * @return void
 * @brief  shoots one ping pong ball
 * @note  rotates servo to remove barrier to shot
 * @author Max Dunne, 2013.08.19 */
void SHOOTING_Shoot(void);

/**
 * @Function SHOOTING_Reload(void)
 * @return void
 * @brief  reloads one ping pong ball
 * @note  rotates servo to remove barrier to reload
 * @author Max Dunne, 2013.08.19 */
void SHOOTING_Reload(void);
