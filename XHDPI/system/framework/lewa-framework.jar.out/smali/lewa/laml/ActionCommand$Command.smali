.class final enum Llewa/laml/ActionCommand$Command;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llewa/laml/ActionCommand$Command;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llewa/laml/ActionCommand$Command;

.field public static final enum Invalid:Llewa/laml/ActionCommand$Command;

.field public static final enum Refresh:Llewa/laml/ActionCommand$Command;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 999
    new-instance v0, Llewa/laml/ActionCommand$Command;

    const-string v1, "Refresh"

    invoke-direct {v0, v1, v2}, Llewa/laml/ActionCommand$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/ActionCommand$Command;->Refresh:Llewa/laml/ActionCommand$Command;

    new-instance v0, Llewa/laml/ActionCommand$Command;

    const-string v1, "Invalid"

    invoke-direct {v0, v1, v3}, Llewa/laml/ActionCommand$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/ActionCommand$Command;->Invalid:Llewa/laml/ActionCommand$Command;

    .line 998
    const/4 v0, 0x2

    new-array v0, v0, [Llewa/laml/ActionCommand$Command;

    sget-object v1, Llewa/laml/ActionCommand$Command;->Refresh:Llewa/laml/ActionCommand$Command;

    aput-object v1, v0, v2

    sget-object v1, Llewa/laml/ActionCommand$Command;->Invalid:Llewa/laml/ActionCommand$Command;

    aput-object v1, v0, v3

    sput-object v0, Llewa/laml/ActionCommand$Command;->$VALUES:[Llewa/laml/ActionCommand$Command;

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
    .line 998
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llewa/laml/ActionCommand$Command;
    .locals 1
    .parameter "name"

    .prologue
    .line 998
    const-class v0, Llewa/laml/ActionCommand$Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llewa/laml/ActionCommand$Command;

    return-object v0
.end method

.method public static values()[Llewa/laml/ActionCommand$Command;
    .locals 1

    .prologue
    .line 998
    sget-object v0, Llewa/laml/ActionCommand$Command;->$VALUES:[Llewa/laml/ActionCommand$Command;

    invoke-virtual {v0}, [Llewa/laml/ActionCommand$Command;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llewa/laml/ActionCommand$Command;

    return-object v0
.end method
