.class public final synthetic Lcom/samsung/android/apex/motionphoto/composer/-$$Lambda$SemApexVideoSplitter$R5_lkgIuMikLiPKfs33z6xhf8Uc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$XMPReserver;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/apex/motionphoto/composer/-$$Lambda$SemApexVideoSplitter$R5_lkgIuMikLiPKfs33z6xhf8Uc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/-$$Lambda$SemApexVideoSplitter$R5_lkgIuMikLiPKfs33z6xhf8Uc;

    invoke-direct {v0}, Lcom/samsung/android/apex/motionphoto/composer/-$$Lambda$SemApexVideoSplitter$R5_lkgIuMikLiPKfs33z6xhf8Uc;-><init>()V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/-$$Lambda$SemApexVideoSplitter$R5_lkgIuMikLiPKfs33z6xhf8Uc;->INSTANCE:Lcom/samsung/android/apex/motionphoto/composer/-$$Lambda$SemApexVideoSplitter$R5_lkgIuMikLiPKfs33z6xhf8Uc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reserve(Ljava/lang/String;I)J
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->lambda$split$0(Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method
