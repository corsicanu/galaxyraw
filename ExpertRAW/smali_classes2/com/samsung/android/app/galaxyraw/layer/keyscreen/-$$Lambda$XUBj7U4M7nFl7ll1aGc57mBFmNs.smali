.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$XUBj7U4M7nFl7ll1aGc57mBFmNs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$XUBj7U4M7nFl7ll1aGc57mBFmNs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$XUBj7U4M7nFl7ll1aGc57mBFmNs;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$XUBj7U4M7nFl7ll1aGc57mBFmNs;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$XUBj7U4M7nFl7ll1aGc57mBFmNs;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$XUBj7U4M7nFl7ll1aGc57mBFmNs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$Presenter;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$Presenter;->start()V

    return-void
.end method
