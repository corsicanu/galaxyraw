.class public final enum Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;
.super Ljava/lang/Enum;
.source "FaceFeatureInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlinkStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

.field public static final enum BOTH_BLINK:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

.field public static final enum BOTH_OPEN:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

.field public static final enum LEFT_WINK:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

.field public static final enum NO_STATUS:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

.field public static final enum RIGHT_WINK:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

    const-string v1, "BOTH_OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;->BOTH_OPEN:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

    new-instance v1, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

    const-string v3, "LEFT_WINK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;->LEFT_WINK:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

    new-instance v3, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

    const-string v5, "RIGHT_WINK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;->RIGHT_WINK:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

    new-instance v5, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

    const-string v7, "BOTH_BLINK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;->BOTH_BLINK:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

    new-instance v7, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

    const-string v9, "NO_STATUS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;->NO_STATUS:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;->$VALUES:[Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;
    .locals 1

    const-class v0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;
    .locals 1

    sget-object v0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;->$VALUES:[Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

    invoke-virtual {v0}, [Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

    return-object v0
.end method
