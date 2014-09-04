.class final enum Llewa/lockscreen/UnlockerScreenElement$State;
.super Ljava/lang/Enum;
.source "UnlockerScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/lockscreen/UnlockerScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llewa/lockscreen/UnlockerScreenElement$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llewa/lockscreen/UnlockerScreenElement$State;

.field public static final enum Invalid:Llewa/lockscreen/UnlockerScreenElement$State;

.field public static final enum Normal:Llewa/lockscreen/UnlockerScreenElement$State;

.field public static final enum Pressed:Llewa/lockscreen/UnlockerScreenElement$State;

.field public static final enum Reached:Llewa/lockscreen/UnlockerScreenElement$State;

.field public static final enum Unlocked:Llewa/lockscreen/UnlockerScreenElement$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 680
    new-instance v0, Llewa/lockscreen/UnlockerScreenElement$State;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v2}, Llewa/lockscreen/UnlockerScreenElement$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/lockscreen/UnlockerScreenElement$State;->Normal:Llewa/lockscreen/UnlockerScreenElement$State;

    new-instance v0, Llewa/lockscreen/UnlockerScreenElement$State;

    const-string v1, "Pressed"

    invoke-direct {v0, v1, v3}, Llewa/lockscreen/UnlockerScreenElement$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/lockscreen/UnlockerScreenElement$State;->Pressed:Llewa/lockscreen/UnlockerScreenElement$State;

    new-instance v0, Llewa/lockscreen/UnlockerScreenElement$State;

    const-string v1, "Reached"

    invoke-direct {v0, v1, v4}, Llewa/lockscreen/UnlockerScreenElement$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/lockscreen/UnlockerScreenElement$State;->Reached:Llewa/lockscreen/UnlockerScreenElement$State;

    new-instance v0, Llewa/lockscreen/UnlockerScreenElement$State;

    const-string v1, "Unlocked"

    invoke-direct {v0, v1, v5}, Llewa/lockscreen/UnlockerScreenElement$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/lockscreen/UnlockerScreenElement$State;->Unlocked:Llewa/lockscreen/UnlockerScreenElement$State;

    new-instance v0, Llewa/lockscreen/UnlockerScreenElement$State;

    const-string v1, "Invalid"

    invoke-direct {v0, v1, v6}, Llewa/lockscreen/UnlockerScreenElement$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/lockscreen/UnlockerScreenElement$State;->Invalid:Llewa/lockscreen/UnlockerScreenElement$State;

    .line 679
    const/4 v0, 0x5

    new-array v0, v0, [Llewa/lockscreen/UnlockerScreenElement$State;

    sget-object v1, Llewa/lockscreen/UnlockerScreenElement$State;->Normal:Llewa/lockscreen/UnlockerScreenElement$State;

    aput-object v1, v0, v2

    sget-object v1, Llewa/lockscreen/UnlockerScreenElement$State;->Pressed:Llewa/lockscreen/UnlockerScreenElement$State;

    aput-object v1, v0, v3

    sget-object v1, Llewa/lockscreen/UnlockerScreenElement$State;->Reached:Llewa/lockscreen/UnlockerScreenElement$State;

    aput-object v1, v0, v4

    sget-object v1, Llewa/lockscreen/UnlockerScreenElement$State;->Unlocked:Llewa/lockscreen/UnlockerScreenElement$State;

    aput-object v1, v0, v5

    sget-object v1, Llewa/lockscreen/UnlockerScreenElement$State;->Invalid:Llewa/lockscreen/UnlockerScreenElement$State;

    aput-object v1, v0, v6

    sput-object v0, Llewa/lockscreen/UnlockerScreenElement$State;->$VALUES:[Llewa/lockscreen/UnlockerScreenElement$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 679
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llewa/lockscreen/UnlockerScreenElement$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 679
    const-class v0, Llewa/lockscreen/UnlockerScreenElement$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llewa/lockscreen/UnlockerScreenElement$State;

    return-object v0
.end method

.method public static values()[Llewa/lockscreen/UnlockerScreenElement$State;
    .locals 1

    .prologue
    .line 679
    sget-object v0, Llewa/lockscreen/UnlockerScreenElement$State;->$VALUES:[Llewa/lockscreen/UnlockerScreenElement$State;

    invoke-virtual {v0}, [Llewa/lockscreen/UnlockerScreenElement$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llewa/lockscreen/UnlockerScreenElement$State;

    return-object v0
.end method
