.class Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager$LazyHolder;
.super Ljava/lang/Object;
.source "PictureProcessorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;-><init>(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager$1;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager$LazyHolder;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400()Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager$LazyHolder;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;

    return-object v0
.end method
