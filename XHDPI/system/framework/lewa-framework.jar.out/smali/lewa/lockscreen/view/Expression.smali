.class public Llewa/lockscreen/view/Expression;
.super Ljava/lang/Object;
.source "Expression.java"


# static fields
.field public static final ACTUAL_X:Ljava/lang/String; = "actual_x"

.field public static final ACTUAL_Y:Ljava/lang/String; = "actual_y"

.field public static final AMPM:Ljava/lang/String; = "ampm"

.field public static final BATTERY_LEFT:Ljava/lang/String; = "battery_left"

.field public static final BATTERY_LEVEL:Ljava/lang/String; = "battery_level"

.field public static final BATTERY_LOW_LEVEL:Ljava/lang/String; = "battery_low_level"

.field public static final BATTERY_STATE:Ljava/lang/String; = "battery_state"

.field public static final BATTERY_STATE_CHARGING:I = 0x1

.field public static final BATTERY_STATE_FULL:I = 0x3

.field public static final BATTERY_STATE_LOW:I = 0x2

.field public static final BATTERY_STATE_UNPLUGGED:I = 0x0

.field public static final CALL_MISSED_COUNT:Ljava/lang/String; = "call_missed_count"

.field public static final CHARGING_LEFT:Ljava/lang/String; = "charging_left"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DAY_OF_WEEK:Ljava/lang/String; = "day_of_week"

.field public static final GLOBAL:Ljava/lang/String; = "global"

.field public static final HOUR12:Ljava/lang/String; = "hour12"

.field public static final HOUR24:Ljava/lang/String; = "hour24"

.field public static final MILLISECOND:Ljava/lang/String; = "msec"

.field public static final MINUTE:Ljava/lang/String; = "minute"

.field public static final MONTH:Ljava/lang/String; = "month"

.field public static final MOVE_DIST:Ljava/lang/String; = "move_dist"

.field public static final MOVE_X:Ljava/lang/String; = "move_x"

.field public static final MOVE_Y:Ljava/lang/String; = "move_y"

.field public static final MUSIC_PERCENT:Ljava/lang/String; = "music_percent"

.field public static final MUSIC_PROGRESS:Ljava/lang/String; = "music_progress"

.field public static final MUSIC_STATE:Ljava/lang/String; = "music_state"

.field public static final MUSIC_STATE_PLAY:I = 0x1

.field public static final MUSIC_STATE_STOP:I = 0x0

.field public static final MUSIC_TOTAL:Ljava/lang/String; = "music_total"

.field public static final NEXT_ALARM_TIME:Ljava/lang/String; = "next_alarm_time"

.field public static final SCREEN_HEIGHT:Ljava/lang/String; = "screen_height"

.field public static final SCREEN_WIDTH:Ljava/lang/String; = "screen_width"

.field public static final SECOND:Ljava/lang/String; = "second"

.field public static final SMS_UNREAD_COUNT:Ljava/lang/String; = "sms_unread_count"

.field private static final SPECIAL_CHAR:Ljava/lang/String; = "0"

.field public static final STATE:Ljava/lang/String; = "state"

.field private static final TAG:Ljava/lang/String; = "Expression"

.field public static final TEXT_WIDTH:Ljava/lang/String; = "text_width"

.field public static final TIME:Ljava/lang/String; = "time"

.field public static final TOUCH_X:Ljava/lang/String; = "touch_x"

.field public static final TOUCH_Y:Ljava/lang/String; = "touch_y"

.field public static final UNLOCKER_STATE_NORMAL:I = 0x0

.field public static final UNLOCKER_STATE_PRESSED:I = 0x1

.field public static final UNLOCKER_STATE_REACHED:I = 0x2

.field public static final VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final VISIBILITY_FALSE:I = 0x0

.field public static final VISIBILITY_TRUE:I = 0x1

.field public static final YEAR:Ljava/lang/String; = "year"

.field private static evaluator:Lnet/sourceforge/jeval/Evaluator;

.field private static realTimeVar:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static realTimeVars:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static values:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private objDous:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private objStrs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Llewa/lockscreen/view/Expression;->values:Ljava/util/HashMap;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Llewa/lockscreen/view/Expression;->realTimeVars:Ljava/util/HashMap;

    .line 103
    new-instance v0, Lnet/sourceforge/jeval/Evaluator;

    invoke-direct {v0}, Lnet/sourceforge/jeval/Evaluator;-><init>()V

    sput-object v0, Llewa/lockscreen/view/Expression;->evaluator:Lnet/sourceforge/jeval/Evaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v0, "^-?\\d+$"

    iput-object v0, p0, Llewa/lockscreen/view/Expression;->pattern:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llewa/lockscreen/view/Expression;->objStrs:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llewa/lockscreen/view/Expression;->objDous:Ljava/util/HashMap;

    return-void
.end method

.method public static caculateInt(Ljava/lang/String;)I
    .locals 5
    .parameter "exp"

    .prologue
    .line 373
    :try_start_0
    sget-object v2, Llewa/lockscreen/view/Expression;->evaluator:Lnet/sourceforge/jeval/Evaluator;

    invoke-static {p0}, Llewa/lockscreen/view/Expression;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sourceforge/jeval/Evaluator;->evaluate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 374
    .local v0, d:Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I
    :try_end_0
    .catch Lnet/sourceforge/jeval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 378
    .end local v0           #d:Ljava/lang/Double;
    :goto_0
    return v2

    .line 375
    :catch_0
    move-exception v1

    .line 376
    .local v1, e:Lnet/sourceforge/jeval/EvaluationException;
    invoke-virtual {v1}, Lnet/sourceforge/jeval/EvaluationException;->printStackTrace()V

    .line 377
    const-string v2, "Expression"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EvaluationException expValue == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "variable"
    .parameter "defaultValue"

    .prologue
    .line 120
    sget-object v1, Llewa/lockscreen/view/Expression;->values:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 122
    move-object v0, p1

    .line 124
    :cond_0
    return-object v0
.end method

.method public static getRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "mName"
    .parameter "attrName"
    .parameter "defaultValue"

    .prologue
    .line 149
    sget-object v1, Llewa/lockscreen/view/Expression;->realTimeVars:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    sput-object v1, Llewa/lockscreen/view/Expression;->realTimeVar:Ljava/util/HashMap;

    .line 150
    sget-object v1, Llewa/lockscreen/view/Expression;->realTimeVar:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 158
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 153
    .restart local p2
    :cond_1
    sget-object v1, Llewa/lockscreen/view/Expression;->realTimeVar:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    .local v0, realVar:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object p2, v0

    .line 158
    goto :goto_0
.end method

.method private static getVar(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "variable"

    .prologue
    .line 190
    const-string v0, "0"

    invoke-static {p0, v0}, Llewa/lockscreen/view/Expression;->getVar(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getVar(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "variable"
    .parameter "defaultValue"

    .prologue
    .line 199
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    :cond_0
    const-string v0, "Expression"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "variable is invalid, variable == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,return defaultValue == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 208
    :goto_0
    return-object v0

    .line 203
    :cond_1
    sget-object v0, Llewa/lockscreen/view/Expression;->values:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 205
    const-string v0, "0"

    goto :goto_0

    .line 208
    :cond_2
    sget-object v0, Llewa/lockscreen/view/Expression;->values:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "variable"
    .parameter "value"

    .prologue
    .line 111
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    const-string v0, "Expression"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "variable is invalid, variable == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_1
    sget-object v0, Llewa/lockscreen/view/Expression;->values:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static putRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "mName"
    .parameter "attrName"
    .parameter "expValue"

    .prologue
    .line 134
    sget-object v0, Llewa/lockscreen/view/Expression;->realTimeVars:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sput-object v0, Llewa/lockscreen/view/Expression;->realTimeVar:Ljava/util/HashMap;

    .line 135
    sget-object v0, Llewa/lockscreen/view/Expression;->realTimeVar:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Llewa/lockscreen/view/Expression;->realTimeVar:Ljava/util/HashMap;

    .line 137
    sget-object v0, Llewa/lockscreen/view/Expression;->realTimeVars:Ljava/util/HashMap;

    sget-object v1, Llewa/lockscreen/view/Expression;->realTimeVar:Ljava/util/HashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_0
    sget-object v0, Llewa/lockscreen/view/Expression;->realTimeVar:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-void
.end method

.method private static transform(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "expValue"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 218
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 219
    :cond_0
    const-string v3, "Expression"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expValue is invalid, expValue == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 p0, 0x0

    .line 331
    :cond_1
    :goto_0
    return-object p0

    .line 223
    :cond_2
    const-string v3, "#ampm"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_3

    .line 224
    const-string v3, "#ampm"

    const-string v4, "ampm"

    invoke-static {v4}, Llewa/lockscreen/view/Expression;->getVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 226
    :cond_3
    const-string v3, "#hour12"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_4

    .line 227
    const-string v3, "#hour12"

    const-string v4, "hour12"

    invoke-static {v4}, Llewa/lockscreen/view/Expression;->getVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 229
    :cond_4
    const-string v3, "#hour24"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_5

    .line 230
    const-string v3, "#hour24"

    const-string v4, "hour24"

    invoke-static {v4}, Llewa/lockscreen/view/Expression;->getVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 232
    :cond_5
    const-string v3, "#minute"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_6

    .line 233
    const-string v3, "#minute"

    const-string v4, "minute"

    invoke-static {v4}, Llewa/lockscreen/view/Expression;->getVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 235
    :cond_6
    const-string v3, "#msec"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_7

    .line 236
    const-string v3, "#msec"

    const-string v4, "msec"

    invoke-static {v4}, Llewa/lockscreen/view/Expression;->getVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 238
    :cond_7
    const-string v3, "#date"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_8

    .line 239
    const-string v3, "#date"

    const-string v4, "date"

    invoke-static {v4}, Llewa/lockscreen/view/Expression;->getVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 241
    :cond_8
    const-string v3, "#month"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_9

    .line 242
    const-string v3, "#month"

    const-string v4, "month"

    invoke-static {v4}, Llewa/lockscreen/view/Expression;->getVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 244
    :cond_9
    const-string v3, "#year"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_a

    .line 245
    const-string v3, "#year"

    const-string v4, "year"

    invoke-static {v4}, Llewa/lockscreen/view/Expression;->getVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 247
    :cond_a
    const-string v3, "#day_of_week"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_b

    .line 248
    const-string v3, "#day_of_week"

    const-string v4, "day_of_week"

    invoke-static {v4}, Llewa/lockscreen/view/Expression;->getVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 251
    :cond_b
    const-string v3, "#music_percent"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_c

    .line 252
    const-string v3, "#music_percent"

    const-string v4, "music_percent"

    invoke-static {v4}, Llewa/lockscreen/view/Expression;->getVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 254
    :cond_c
    const-string v3, "#music_total"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_d

    .line 255
    const-string v3, "#music_total"

    const-string v4, "music_total"

    invoke-static {v4}, Llewa/lockscreen/view/Expression;->getVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 257
    :cond_d
    const-string v3, "#charging_left"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_e

    .line 258
    const-string v3, "#music_progress"

    const-string v4, "music_progress"

    invoke-static {v4}, Llewa/lockscreen/view/Expression;->getVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 261
    :cond_e
    const-string v3, "#battery_level"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_f

    .line 262
    const-string v3, "#battery_level"

    const-string v4, "battery_level"

    invoke-static {v4}, Llewa/lockscreen/view/Expression;->getVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 264
    :cond_f
    const-string v3, "#battery_left"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_10

    .line 265
    const-string v3, "#battery_left"

    const-string v4, "battery_left"

    invoke-static {v4}, Llewa/lockscreen/view/Expression;->getVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 267
    :cond_10
    const-string v3, "#charging_left"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_11

    .line 268
    const-string v3, "#charging_left"

    const-string v4, "charging_left"

    invoke-static {v4}, Llewa/lockscreen/view/Expression;->getVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 270
    :cond_11
    const-string v3, "#battery_state"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_12

    .line 271
    const-string v3, "#battery_state"

    const-string v4, "battery_state"

    invoke-static {v4}, Llewa/lockscreen/view/Expression;->getVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 273
    :cond_12
    const-string v3, "#battery_low_level"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_13

    .line 274
    const-string v3, "#battery_low_level"

    const-string v4, "battery_low_level"

    invoke-static {v4}, Llewa/lockscreen/view/Expression;->getVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 276
    :cond_13
    const-string v3, "#call_missed_count"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_14

    .line 277
    const-string v3, "#call_missed_count"

    const-string v4, "call_missed_count"

    invoke-static {v4}, Llewa/lockscreen/view/Expression;->getVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 279
    :cond_14
    const-string v3, "#sms_unread_count"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_15

    .line 280
    const-string v3, "#sms_unread_count"

    const-string v4, "sms_unread_count"

    invoke-static {v4}, Llewa/lockscreen/view/Expression;->getVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 282
    :cond_15
    const-string v3, "#screen_height"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_16

    .line 283
    const-string v3, "#screen_height"

    const-string v4, "screen_height"

    invoke-static {v4}, Llewa/lockscreen/view/Expression;->getVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 285
    :cond_16
    const-string v3, "#screen_width"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_17

    .line 286
    const-string v3, "#screen_width"

    const-string v4, "screen_width"

    invoke-static {v4}, Llewa/lockscreen/view/Expression;->getVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 288
    :cond_17
    const-string v3, "#text_width"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_18

    .line 289
    const-string v3, "#text_width"

    const-string v4, "text_width"

    invoke-static {v4}, Llewa/lockscreen/view/Expression;->getVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 291
    :cond_18
    const-string v3, "#time"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_19

    .line 292
    const-string v3, "#time"

    const-string v4, "time"

    invoke-static {v4}, Llewa/lockscreen/view/Expression;->getVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 295
    :cond_19
    const-string v3, ".move_y"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_1a

    .line 296
    const-string v3, ".move_y"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 297
    .local v1, position:I
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, subStr:Ljava/lang/String;
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, name:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".move_y"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "move_y"

    const-string v5, "0"

    invoke-static {v0, v4, v5}, Llewa/lockscreen/view/Expression;->getRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 301
    .end local v0           #name:Ljava/lang/String;
    .end local v1           #position:I
    .end local v2           #subStr:Ljava/lang/String;
    :cond_1a
    const-string v3, ".move_x"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_1b

    .line 302
    const-string v3, ".move_x"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 303
    .restart local v1       #position:I
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 304
    .restart local v2       #subStr:Ljava/lang/String;
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 305
    .restart local v0       #name:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".move_x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "move_x"

    const-string v5, "0"

    invoke-static {v0, v4, v5}, Llewa/lockscreen/view/Expression;->getRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 307
    .end local v0           #name:Ljava/lang/String;
    .end local v1           #position:I
    .end local v2           #subStr:Ljava/lang/String;
    :cond_1b
    const-string v3, ".state"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_1c

    .line 308
    const-string v3, ".state"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 309
    .restart local v1       #position:I
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 310
    .restart local v2       #subStr:Ljava/lang/String;
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 311
    .restart local v0       #name:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "state"

    const-string v5, "0"

    invoke-static {v0, v4, v5}, Llewa/lockscreen/view/Expression;->getRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 313
    .end local v0           #name:Ljava/lang/String;
    .end local v1           #position:I
    .end local v2           #subStr:Ljava/lang/String;
    :cond_1c
    const-string v3, ".music_state"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_1d

    .line 314
    const-string v3, ".music_state"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 315
    .restart local v1       #position:I
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 316
    .restart local v2       #subStr:Ljava/lang/String;
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 317
    .restart local v0       #name:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".music_state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "music_state"

    const-string v5, "0"

    invoke-static {v0, v4, v5}, Llewa/lockscreen/view/Expression;->getRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 319
    .end local v0           #name:Ljava/lang/String;
    .end local v1           #position:I
    .end local v2           #subStr:Ljava/lang/String;
    :cond_1d
    const-string v3, ".move_dist"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_1e

    .line 320
    const-string v3, ".move_dist"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 321
    .restart local v1       #position:I
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 322
    .restart local v2       #subStr:Ljava/lang/String;
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 323
    .restart local v0       #name:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".move_dist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "move_dist"

    const-string v5, "0"

    invoke-static {v0, v4, v5}, Llewa/lockscreen/view/Expression;->getRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 325
    .end local v0           #name:Ljava/lang/String;
    .end local v1           #position:I
    .end local v2           #subStr:Ljava/lang/String;
    :cond_1e
    const-string v3, ".visibility"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_1

    .line 326
    const-string v3, ".visibility"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 327
    .restart local v1       #position:I
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 328
    .restart local v2       #subStr:Ljava/lang/String;
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 329
    .restart local v0       #name:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".visibility"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "visibility"

    const-string v5, "0"

    invoke-static {v0, v4, v5}, Llewa/lockscreen/view/Expression;->getRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method


# virtual methods
.method public getDou(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 4
    .parameter "attrName"
    .parameter "defaultValue"

    .prologue
    .line 341
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 342
    :cond_0
    const-string v1, "Expression"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attrName is invalid, attrName == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,return defaultValue == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    .line 349
    :cond_1
    :goto_0
    return-object v0

    .line 345
    :cond_2
    iget-object v1, p0, Llewa/lockscreen/view/Expression;->objDous:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 346
    .local v0, result:Ljava/lang/Double;
    if-nez v0, :cond_1

    .line 347
    move-object v0, p2

    goto :goto_0
.end method

.method public getStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "attrName"

    .prologue
    .line 363
    iget-object v0, p0, Llewa/lockscreen/view/Expression;->objStrs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public putDou(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "attrName"
    .parameter "expValue"

    .prologue
    const-wide/16 v5, 0x0

    .line 167
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 168
    .local v0, dou:Ljava/lang/Double;
    iget-object v2, p0, Llewa/lockscreen/view/Expression;->pattern:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 185
    :goto_0
    iget-object v2, p0, Llewa/lockscreen/view/Expression;->objDous:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    return-void

    .line 173
    :cond_0
    :try_start_0
    sget-object v2, Llewa/lockscreen/view/Expression;->evaluator:Lnet/sourceforge/jeval/Evaluator;

    invoke-static {p2}, Llewa/lockscreen/view/Expression;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sourceforge/jeval/Evaluator;->evaluate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/sourceforge/jeval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 177
    const-string v2, "Expression"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NumberFormatException result == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 182
    goto :goto_0

    .line 179
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 180
    .local v1, e:Lnet/sourceforge/jeval/EvaluationException;
    invoke-virtual {v1}, Lnet/sourceforge/jeval/EvaluationException;->printStackTrace()V

    .line 181
    const-string v2, "Expression"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EvaluationException expValue == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public putStr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "attrName"
    .parameter "expValue"

    .prologue
    .line 358
    iget-object v0, p0, Llewa/lockscreen/view/Expression;->objStrs:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    return-void
.end method

.method public putStrTransform(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "attrName"
    .parameter "expValue"

    .prologue
    .line 367
    iget-object v0, p0, Llewa/lockscreen/view/Expression;->objStrs:Ljava/util/HashMap;

    invoke-static {p2}, Llewa/lockscreen/view/Expression;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    return-void
.end method
