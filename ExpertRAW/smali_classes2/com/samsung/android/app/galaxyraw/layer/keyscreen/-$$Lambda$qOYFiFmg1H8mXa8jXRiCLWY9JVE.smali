.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$qOYFiFmg1H8mXa8jXRiCLWY9JVE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$qOYFiFmg1H8mXa8jXRiCLWY9JVE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$qOYFiFmg1H8mXa8jXRiCLWY9JVE;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$qOYFiFmg1H8mXa8jXRiCLWY9JVE;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$qOYFiFmg1H8mXa8jXRiCLWY9JVE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$qOYFiFmg1H8mXa8jXRiCLWY9JVE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->clear()V

    return-void
.end method
