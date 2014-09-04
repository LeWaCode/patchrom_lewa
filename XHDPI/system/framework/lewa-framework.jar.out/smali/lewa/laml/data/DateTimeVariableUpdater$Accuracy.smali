.class public final enum Llewa/laml/data/DateTimeVariableUpdater$Accuracy;
.super Ljava/lang/Enum;
.source "DateTimeVariableUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/data/DateTimeVariableUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Accuracy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llewa/laml/data/DateTimeVariableUpdater$Accuracy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llewa/laml/data/DateTimeVariableUpdater$Accuracy;

.field public static final enum Day:Llewa/laml/data/DateTimeVariableUpdater$Accuracy;

.field public static final enum Hour:Llewa/laml/data/DateTimeVariableUpdater$Accuracy;

.field public static final enum Minute:Llewa/laml/data/DateTimeVariableUpdater$Accuracy;

.field public static final enum Second:Llewa/laml/data/DateTimeVariableUpdater$Accuracy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Llewa/laml/data/DateTimeVariableUpdater$Accuracy;

    const-string v1, "Day"

    invoke-direct {v0, v1, v2}, Llewa/laml/data/DateTimeVariableUpdater$Accuracy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/DateTimeVariableUpdater$Accuracy;->Day:Llewa/laml/data/DateTimeVariableUpdater$Accuracy;

    new-instance v0, Llewa/laml/data/DateTimeVariableUpdater$Accuracy;

    const-string v1, "Hour"

    invoke-direct {v0, v1, v3}, Llewa/laml/data/DateTimeVariableUpdater$Accuracy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/DateTimeVariableUpdater$Accuracy;->Hour:Llewa/laml/data/DateTimeVariableUpdater$Accuracy;

    new-instance v0, Llewa/laml/data/DateTimeVariableUpdater$Accuracy;

    const-string v1, "Minute"

    invoke-direct {v0, v1, v4}, Llewa/laml/data/DateTimeVariableUpdater$Accuracy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/DateTimeVariableUpdater$Accuracy;->Minute:Llewa/laml/data/DateTimeVariableUpdater$Accuracy;

    new-instance v0, Llewa/laml/data/DateTimeVariableUpdater$Accuracy;

    const-string v1, "Second"

    invoke-direct {v0, v1, v5}, Llewa/laml/data/DateTimeVariableUpdater$Accuracy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/laml/data/DateTimeVariableUpdater$Accuracy;->Second:Llewa/laml/data/DateTimeVariableUpdater$Accuracy;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Llewa/laml/data/DateTimeVariableUpdater$Accuracy;

    sget-object v1, Llewa/laml/data/DateTimeVariableUpdater$Accuracy;->Day:Llewa/laml/data/DateTimeVariableUpdater$Accuracy;

    aput-object v1, v0, v2

    sget-object v1, Llewa/laml/data/DateTimeVariableUpdater$Accuracy;->Hour:Llewa/laml/data/DateTimeVariableUpdater$Accuracy;

    aput-object v1, v0, v3

    sget-object v1, Llewa/laml/data/DateTimeVariableUpdater$Accuracy;->Minute:Llewa/laml/data/DateTimeVariableUpdater$Accuracy;

    aput-object v1, v0, v4

    sget-object v1, Llewa/laml/data/DateTimeVariableUpdater$Accuracy;->Second:Llewa/laml/data/DateTimeVariableUpdater$Accuracy;

    aput-object v1, v0, v5

    sput-object v0, Llewa/laml/data/DateTimeVariableUpdater$Accuracy;->$VALUES:[Llewa/laml/data/DateTimeVariableUpdater$Accuracy;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llewa/laml/data/DateTimeVariableUpdater$Accuracy;
    .locals 1
    .parameter "name"

    .prologue
    .line 19
    const-class v0, Llewa/laml/data/DateTimeVariableUpdater$Accuracy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llewa/laml/data/DateTimeVariableUpdater$Accuracy;

    return-object v0
.end method

.method public static values()[Llewa/laml/data/DateTimeVariableUpdater$Accuracy;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Llewa/laml/data/DateTimeVariableUpdater$Accuracy;->$VALUES:[Llewa/laml/data/DateTimeVariableUpdater$Accuracy;

    invoke-virtual {v0}, [Llewa/laml/data/DateTimeVariableUpdater$Accuracy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llewa/laml/data/DateTimeVariableUpdater$Accuracy;

    return-object v0
.end method
