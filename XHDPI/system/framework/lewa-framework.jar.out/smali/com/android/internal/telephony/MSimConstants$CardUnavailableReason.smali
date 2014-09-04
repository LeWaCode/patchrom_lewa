.class public final enum Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;
.super Ljava/lang/Enum;
.source "MSimConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MSimConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CardUnavailableReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

.field public static final enum REASON_CARD_REMOVED:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

.field public static final enum REASON_RADIO_UNAVAILABLE:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

.field public static final enum REASON_SIM_REFRESH_RESET:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    const-string v1, "REASON_CARD_REMOVED"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;->REASON_CARD_REMOVED:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    .line 57
    new-instance v0, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    const-string v1, "REASON_RADIO_UNAVAILABLE"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;->REASON_RADIO_UNAVAILABLE:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    .line 58
    new-instance v0, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    const-string v1, "REASON_SIM_REFRESH_RESET"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;->REASON_SIM_REFRESH_RESET:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    sget-object v1, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;->REASON_CARD_REMOVED:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;->REASON_RADIO_UNAVAILABLE:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;->REASON_SIM_REFRESH_RESET:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;->$VALUES:[Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;
    .locals 1
    .parameter "name"

    .prologue
    .line 55
    const-class v0, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;->$VALUES:[Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    return-object v0
.end method
