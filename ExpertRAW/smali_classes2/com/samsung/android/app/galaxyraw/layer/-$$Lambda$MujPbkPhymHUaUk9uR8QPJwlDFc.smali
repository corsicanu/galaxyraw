.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$MujPbkPhymHUaUk9uR8QPJwlDFc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$MujPbkPhymHUaUk9uR8QPJwlDFc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$MujPbkPhymHUaUk9uR8QPJwlDFc;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$MujPbkPhymHUaUk9uR8QPJwlDFc;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$MujPbkPhymHUaUk9uR8QPJwlDFc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$MujPbkPhymHUaUk9uR8QPJwlDFc;

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

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$Presenter;->stop()V

    return-void
.end method
