.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$_tHZjGSEXL1KzvpmjNDk2Mbw1Ek;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$Builder;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$_tHZjGSEXL1KzvpmjNDk2Mbw1Ek;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$_tHZjGSEXL1KzvpmjNDk2Mbw1Ek;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$_tHZjGSEXL1KzvpmjNDk2Mbw1Ek;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$_tHZjGSEXL1KzvpmjNDk2Mbw1Ek;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$_tHZjGSEXL1KzvpmjNDk2Mbw1Ek;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->lambda$new$57(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;

    move-result-object p0

    return-object p0
.end method