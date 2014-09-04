.class public final enum Llewa/laml/elements/ButtonScreenElement$ButtonAction;
.super Ljava/lang/Enum;
.source "ButtonScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/elements/ButtonScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ButtonAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llewa/laml/elements/ButtonScreenElement$ButtonAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llewa/laml/elements/ButtonScreenElement$ButtonAction;

.field public static final enum Cancel:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

.field public static final enum Double:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

.field public static final enum Down:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

.field public static final enum Long:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

.field public static final enum Other:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

.field public static final enum Up:Llewa/laml/elements/ButtonScreenElement$ButtonAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    const-string v1, "Down"

    invoke-direct {v0, v1, v3}, Llewa/laml/elements/ButtonScreenElement$ButtonAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/elements/ButtonScreenElement$ButtonAction;->Down:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    new-instance v0, Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    const-string v1, "Up"

    invoke-direct {v0, v1, v4}, Llewa/laml/elements/ButtonScreenElement$ButtonAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/elements/ButtonScreenElement$ButtonAction;->Up:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    new-instance v0, Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    const-string v1, "Double"

    invoke-direct {v0, v1, v5}, Llewa/laml/elements/ButtonScreenElement$ButtonAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/elements/ButtonScreenElement$ButtonAction;->Double:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    new-instance v0, Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    const-string v1, "Long"

    invoke-direct {v0, v1, v6}, Llewa/laml/elements/ButtonScreenElement$ButtonAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/elements/ButtonScreenElement$ButtonAction;->Long:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    new-instance v0, Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    const-string v1, "Cancel"

    invoke-direct {v0, v1, v7}, Llewa/laml/elements/ButtonScreenElement$ButtonAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/elements/ButtonScreenElement$ButtonAction;->Cancel:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    new-instance v0, Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    const-string v1, "Other"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Llewa/laml/elements/ButtonScreenElement$ButtonAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/elements/ButtonScreenElement$ButtonAction;->Other:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    .line 41
    const/4 v0, 0x6

    new-array v0, v0, [Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    sget-object v1, Llewa/laml/elements/ButtonScreenElement$ButtonAction;->Down:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    aput-object v1, v0, v3

    sget-object v1, Llewa/laml/elements/ButtonScreenElement$ButtonAction;->Up:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    aput-object v1, v0, v4

    sget-object v1, Llewa/laml/elements/ButtonScreenElement$ButtonAction;->Double:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    aput-object v1, v0, v5

    sget-object v1, Llewa/laml/elements/ButtonScreenElement$ButtonAction;->Long:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    aput-object v1, v0, v6

    sget-object v1, Llewa/laml/elements/ButtonScreenElement$ButtonAction;->Cancel:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Llewa/laml/elements/ButtonScreenElement$ButtonAction;->Other:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    aput-object v2, v0, v1

    sput-object v0, Llewa/laml/elements/ButtonScreenElement$ButtonAction;->$VALUES:[Llewa/laml/elements/ButtonScreenElement$ButtonAction;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llewa/laml/elements/ButtonScreenElement$ButtonAction;
    .locals 1
    .parameter "name"

    .prologue
    .line 41
    const-class v0, Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    return-object v0
.end method

.method public static values()[Llewa/laml/elements/ButtonScreenElement$ButtonAction;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Llewa/laml/elements/ButtonScreenElement$ButtonAction;->$VALUES:[Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    invoke-virtual {v0}, [Llewa/laml/elements/ButtonScreenElement$ButtonAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    return-object v0
.end method
