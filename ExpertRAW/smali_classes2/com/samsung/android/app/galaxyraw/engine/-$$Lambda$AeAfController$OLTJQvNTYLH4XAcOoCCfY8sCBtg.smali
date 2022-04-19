.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$OLTJQvNTYLH4XAcOoCCfY8sCBtg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$OLTJQvNTYLH4XAcOoCCfY8sCBtg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$OLTJQvNTYLH4XAcOoCCfY8sCBtg;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$OLTJQvNTYLH4XAcOoCCfY8sCBtg;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$OLTJQvNTYLH4XAcOoCCfY8sCBtg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$OLTJQvNTYLH4XAcOoCCfY8sCBtg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->lambda$lockAe$2(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method
