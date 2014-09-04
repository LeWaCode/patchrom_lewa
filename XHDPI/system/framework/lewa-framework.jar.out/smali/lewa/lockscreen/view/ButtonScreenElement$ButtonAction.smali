.class final enum Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;
.super Ljava/lang/Enum;
.source "ButtonScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/lockscreen/view/ButtonScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ButtonAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

.field public static final enum Double:Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

.field public static final enum Down:Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

.field public static final enum Invalid:Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

.field public static final enum Long:Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

.field public static final enum Up:Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 207
    new-instance v0, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    const-string v1, "Down"

    invoke-direct {v0, v1, v2}, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;->Down:Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    new-instance v0, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    const-string v1, "Up"

    invoke-direct {v0, v1, v3}, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;->Up:Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    new-instance v0, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    const-string v1, "Double"

    invoke-direct {v0, v1, v4}, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;->Double:Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    new-instance v0, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    const-string v1, "Long"

    invoke-direct {v0, v1, v5}, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;->Long:Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    new-instance v0, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    const-string v1, "Invalid"

    invoke-direct {v0, v1, v6}, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;->Invalid:Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    .line 206
    const/4 v0, 0x5

    new-array v0, v0, [Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    sget-object v1, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;->Down:Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    aput-object v1, v0, v2

    sget-object v1, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;->Up:Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    aput-object v1, v0, v3

    sget-object v1, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;->Double:Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    aput-object v1, v0, v4

    sget-object v1, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;->Long:Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    aput-object v1, v0, v5

    sget-object v1, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;->Invalid:Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    aput-object v1, v0, v6

    sput-object v0, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;->$VALUES:[Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

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
    .line 206
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;
    .locals 1
    .parameter "name"

    .prologue
    .line 206
    const-class v0, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    return-object v0
.end method

.method public static values()[Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;
    .locals 1

    .prologue
    .line 206
    sget-object v0, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;->$VALUES:[Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    invoke-virtual {v0}, [Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    return-object v0
.end method
