.class public Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;
.super Ljava/lang/Object;
.source "MakerRepeatingModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;,
        Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;
    }
.end annotation


# static fields
.field protected static final REPEATING_KEY_FIRST_RECORD_SURFACE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final REPEATING_KEY_MAIN_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final REPEATING_KEY_MAIN_PREVIEW_CALLBACK_ONLY:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final REPEATING_KEY_PREVIEW_AR_CORE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final REPEATING_KEY_PREVIEW_DEPTH:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final REPEATING_KEY_PREVIEW_EXTRA_SURFACE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final REPEATING_KEY_PREVIEW_SURFACE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final REPEATING_KEY_SECOND_RECORD_SURFACE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final REPEATING_KEY_SUB_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;


# instance fields
.field private final MAKER_REPEATING_MODE_MANAGER_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

.field private final mActivatedRepeatingModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;",
            "Ljava/util/PriorityQueue<",
            "Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCurrentMaxRepeatingFrameRate:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->PREVIEW_SURFACE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const/4 v2, 0x0

    const-string v3, "PREVIEW_SURFACE"

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->REPEATING_KEY_PREVIEW_SURFACE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->PREVIEW_EXTRA_SURFACE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const-string v3, "PREVIEW_EXTRA_SURFACE"

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->REPEATING_KEY_PREVIEW_EXTRA_SURFACE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->MAIN_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const-string v3, "MAIN_PREVIEW_CALLBACK"

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->REPEATING_KEY_MAIN_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->MAIN_PREVIEW_CALLBACK_ONLY:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const-string v3, "MAIN_PREVIEW_CALLBACK_ONLY"

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->REPEATING_KEY_MAIN_PREVIEW_CALLBACK_ONLY:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->SUB_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const-string v3, "SUB_PREVIEW_CALLBACK"

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->REPEATING_KEY_SUB_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->PREVIEW_DEPTH:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const-string v3, "PREVIEW_DEPTH"

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->REPEATING_KEY_PREVIEW_DEPTH:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->PREVIEW_AR_CORE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const-string v3, "PREVIEW_AR_CORE"

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->REPEATING_KEY_PREVIEW_AR_CORE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->FIRST_RECORD_SURFACE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const-string v3, "FIRST_RECORD_SURFACE"

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->REPEATING_KEY_FIRST_RECORD_SURFACE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->SECOND_RECORD_SURFACE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const-string v3, "SECOND_RECORD_SURFACE"

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->REPEATING_KEY_SECOND_RECORD_SURFACE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userTag"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->mActivatedRepeatingModeMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;->RATIO_NONE:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->mCurrentMaxRepeatingFrameRate:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->MAKER_REPEATING_MODE_MANAGER_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->values()[Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->mActivatedRepeatingModeMap:Ljava/util/Map;

    new-instance v4, Ljava/util/PriorityQueue;

    invoke-direct {v4}, Ljava/util/PriorityQueue;-><init>()V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$calculateRepeatingCount$2(Ljava/util/PriorityQueue;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$calculateRepeatingCount$3(Ljava/lang/Integer;Ljava/util/Map;Ljava/util/PriorityQueue;)V
    .locals 1

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->getFrameRateRatio()F

    move-result v0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->getMode()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$reset$0(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;->RATIO_MAX_PREVIEW_FPS:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->setFrameRate(Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;)V

    return-void
.end method

.method static synthetic lambda$reset$1(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;Ljava/util/PriorityQueue;)V
    .locals 0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$bi1lpzpO5iN0eaNxPPmbVgdBDzk;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$bi1lpzpO5iN0eaNxPPmbVgdBDzk;

    invoke-virtual {p1, p0}, Ljava/util/PriorityQueue;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->clear()V

    return-void
.end method

.method private declared-synchronized setRepeatingKey(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "repeatingKey",
            "enable"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->mActivatedRepeatingModeMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->getMode()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/PriorityQueue;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->MAKER_REPEATING_MODE_MANAGER_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRepeatingKey - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    if-nez p2, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->mCurrentMaxRepeatingFrameRate:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->getFrameRate()Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit p0

    return p1

    :cond_2
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->mCurrentMaxRepeatingFrameRate:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->getFrameRate()Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;->compareFrameRate(Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized backUpCurMaxRepeatingFrameRate(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "repeatingKey"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->mActivatedRepeatingModeMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->getMode()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/PriorityQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;->RATIO_NONE:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->mCurrentMaxRepeatingFrameRate:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->getFrameRate()Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->mCurrentMaxRepeatingFrameRate:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized calculateRepeatingCount(Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxAeTargetFps"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->initRepeatingCount()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->mActivatedRepeatingModeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$ERuO7SzpWsUYB_PnCHHTsYuYzyo;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$ERuO7SzpWsUYB_PnCHHTsYuYzyo;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$fQB0umxi9xbtcpRgkAcB7x6uxk0;

    invoke-direct {v2, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$fQB0umxi9xbtcpRgkAcB7x6uxk0;-><init>(Ljava/lang/Integer;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CalculationUtils;->gcd(Ljava/util/Collection;)I

    move-result p1

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$Jhtxx6H08lgPMlw1wkyv-tOm-bc;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$Jhtxx6H08lgPMlw1wkyv-tOm-bc;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enableRepeatingKey(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "repeatingKey",
            "frameRate",
            "enable"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->mActivatedRepeatingModeMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->getMode()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz p3, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->getFrameRate()Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->setFrameRate(Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;)V

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->enableRepeatingKey(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enableRepeatingKey(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "repeatingKey",
            "enable"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->mActivatedRepeatingModeMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->getMode()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p2, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->MAKER_REPEATING_MODE_MANAGER_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "enableRepeatingKey - this repeatingKey(%s) is in the same condition. (enable: %b)"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v4

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->setRepeatingKey(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)Z

    move-result p2

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-ne v1, v0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v4

    goto :goto_1

    :cond_2
    :goto_0
    move p2, v3

    :goto_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$1;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$maker$MakerRepeatingModeManager$RepeatingMode:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->getMode()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->ordinal()I

    move-result p1

    aget p1, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    monitor-exit p0

    return p2

    :cond_3
    if-eqz p2, :cond_4

    :try_start_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->mActivatedRepeatingModeMap:Ljava/util/Map;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->MAIN_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->mActivatedRepeatingModeMap:Ljava/util/Map;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->PREVIEW_SURFACE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :cond_5
    :goto_2
    monitor-exit p0

    return v3

    :cond_6
    if-eqz p2, :cond_7

    :try_start_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->mActivatedRepeatingModeMap:Ljava/util/Map;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->MAIN_PREVIEW_CALLBACK_ONLY:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    move v3, v4

    :goto_3
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getRepeatingCount(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "repeatingMode"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->isRepeatingModeEnabled(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->MAIN_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->MAIN_PREVIEW_CALLBACK_ONLY:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->getRepeatingCount()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v0, :cond_1

    monitor-exit p0

    return v0

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->getRepeatingCount()I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getRepeatingCount(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "repeatingMode",
            "repeatingEnable"
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->getRepeatingCount(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isRepeatingModeEnabled(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->MAKER_REPEATING_MODE_MANAGER_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRepeatingModeEnabled - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->mActivatedRepeatingModeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$1;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$maker$MakerRepeatingModeManager$RepeatingMode:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->ordinal()I

    move-result p1

    aget p1, v3, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v2, :cond_7

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    monitor-exit p0

    return v0

    :cond_1
    if-nez v0, :cond_2

    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->mActivatedRepeatingModeMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->MAIN_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    monitor-exit p0

    return v1

    :cond_4
    if-nez v0, :cond_5

    :try_start_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->mActivatedRepeatingModeMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->MAIN_PREVIEW_CALLBACK_ONLY:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    monitor-exit p0

    return v1

    :cond_7
    if-eqz v0, :cond_8

    :try_start_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->mActivatedRepeatingModeMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->MAIN_PREVIEW_CALLBACK_ONLY:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_8

    move v1, v2

    :cond_8
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic lambda$calculateRepeatingCount$4$MakerRepeatingModeManager(ILcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;Ljava/lang/Integer;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->MAKER_REPEATING_MODE_MANAGER_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculateRepeatingCount - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxFps : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    div-int/2addr p0, p1

    invoke-virtual {p2, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->setRepeatingCount(I)V

    return-void
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->MAKER_REPEATING_MODE_MANAGER_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->mActivatedRepeatingModeMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$d3CuQyQIsgo5EtgGHPpklQNwtlc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerRepeatingModeManager$d3CuQyQIsgo5EtgGHPpklQNwtlc;

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
