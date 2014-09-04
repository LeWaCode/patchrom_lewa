.class public Llewa/laml/data/VariableNames;
.super Ljava/lang/Object;
.source "VariableNames.java"


# static fields
.field public static final BATTERY_LEVEL:Ljava/lang/String; = "battery_level"

.field public static final BATTERY_STATE:Ljava/lang/String; = "battery_state"

.field public static final BATTERY_STATE_CHARGING:I = 0x1

.field public static final BATTERY_STATE_FULL:I = 0x3

.field public static final BATTERY_STATE_LOW:I = 0x2

.field public static final BATTERY_STATE_UNPLUGGED:I = 0x0

.field public static final BLUETOOTH_STATE:Ljava/lang/String; = "bluetooth_state"

.field public static final BOUNCE_PROGRESS:Ljava/lang/String; = "bounce_progress"

.field public static final CALL_MISSED_COUNT:Ljava/lang/String; = "call_missed_count"

.field public static final DATA_STATE:Ljava/lang/String; = "data_state"

.field public static final FRAME_RATE:Ljava/lang/String; = "frame_rate"

.field public static final FREEZE:Ljava/lang/String; = "freeze"

.field public static final MMS_UNREAD_COUNT:Ljava/lang/String; = "mms_unread_count"

.field public static final MUSIC_STATE:Ljava/lang/String; = "music_state"

.field public static final MUSIC_STATE_PLAY:I = 0x1

.field public static final MUSIC_STATE_STOP:I = 0x0

.field public static final NATIVE_CAMERA:Ljava/lang/String; = "native_camera"

.field public static final PLMN:Ljava/lang/String; = "plmn"

.field public static final RAW_SCREEN_HEIGHT:Ljava/lang/String; = "raw_screen_height"

.field public static final RAW_SCREEN_WIDTH:Ljava/lang/String; = "raw_screen_width"

.field public static final RING_MODE:Ljava/lang/String; = "ring_mode"

.field public static final SCREEN_DENSITY:Ljava/lang/String; = "screen_density"

.field public static final SCREEN_HEIGHT:Ljava/lang/String; = "screen_height"

.field public static final SCREEN_WIDTH:Ljava/lang/String; = "screen_width"

.field public static final SMS_UNREAD_COUNT:Ljava/lang/String; = "sms_unread_count"

.field public static final SPN:Ljava/lang/String; = "spn"

.field public static final TIME_FORMAT_12:I = 0x0

.field public static final TIME_FORMAT_24:I = 0x1

.field public static final USB_MODE:Ljava/lang/String; = "usb_mode"

.field public static final VAR_AMPM:Ljava/lang/String; = "ampm"

.field public static final VAR_DATE:Ljava/lang/String; = "date"

.field public static final VAR_DAY_OF_WEEK:Ljava/lang/String; = "day_of_week"

.field public static final VAR_HOUR12:Ljava/lang/String; = "hour12"

.field public static final VAR_HOUR24:Ljava/lang/String; = "hour24"

.field public static final VAR_INTECEPT_SYS_TOUCH:Ljava/lang/String; = "intercept_sys_touch"

.field public static final VAR_MINUTE:Ljava/lang/String; = "minute"

.field public static final VAR_MONTH:Ljava/lang/String; = "month"

.field public static final VAR_MUSIC_ARTIST:Ljava/lang/String; = "artist"

.field public static final VAR_MUSIC_TITLE:Ljava/lang/String; = "title"

.field public static final VAR_NEXT_ALARM_TIME:Ljava/lang/String; = "next_alarm_time"

.field public static final VAR_SECOND:Ljava/lang/String; = "second"

.field public static final VAR_TIME:Ljava/lang/String; = "time"

.field public static final VAR_TIME_FORMAT:Ljava/lang/String; = "time_format"

.field public static final VAR_TIME_SYS:Ljava/lang/String; = "time_sys"

.field public static final VAR_TOUCH_BEGIN_TIME:Ljava/lang/String; = "touch_begin_time"

.field public static final VAR_TOUCH_BEGIN_X:Ljava/lang/String; = "touch_begin_x"

.field public static final VAR_TOUCH_BEGIN_Y:Ljava/lang/String; = "touch_begin_y"

.field public static final VAR_TOUCH_X:Ljava/lang/String; = "touch_x"

.field public static final VAR_TOUCH_Y:Ljava/lang/String; = "touch_y"

.field public static final VAR_YEAR:Ljava/lang/String; = "year"

.field public static final WIFI_STATE:Ljava/lang/String; = "wifi_state"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
