.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$vrnI8ML-kURqsKLw2VXDZlsIKu4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$vrnI8ML-kURqsKLw2VXDZlsIKu4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$vrnI8ML-kURqsKLw2VXDZlsIKu4;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$vrnI8ML-kURqsKLw2VXDZlsIKu4;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$vrnI8ML-kURqsKLw2VXDZlsIKu4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$vrnI8ML-kURqsKLw2VXDZlsIKu4;

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

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$Presenter;->clear()V

    return-void
.end method
