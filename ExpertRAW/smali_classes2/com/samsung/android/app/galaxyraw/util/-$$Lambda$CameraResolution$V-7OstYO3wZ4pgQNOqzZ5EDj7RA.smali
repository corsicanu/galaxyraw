.class public final synthetic Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$V-7OstYO3wZ4pgQNOqzZ5EDj7RA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$V-7OstYO3wZ4pgQNOqzZ5EDj7RA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$V-7OstYO3wZ4pgQNOqzZ5EDj7RA;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$V-7OstYO3wZ4pgQNOqzZ5EDj7RA;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$V-7OstYO3wZ4pgQNOqzZ5EDj7RA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$V-7OstYO3wZ4pgQNOqzZ5EDj7RA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->lambda$getSelectableBackProVideoResolutionList$1(I)[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    return-object p0
.end method
