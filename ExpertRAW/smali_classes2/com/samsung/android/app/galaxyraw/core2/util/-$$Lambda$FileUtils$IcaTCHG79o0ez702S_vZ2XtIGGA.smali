.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$FileUtils$IcaTCHG79o0ez702S_vZ2XtIGGA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$FileUtils$IcaTCHG79o0ez702S_vZ2XtIGGA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$FileUtils$IcaTCHG79o0ez702S_vZ2XtIGGA;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$FileUtils$IcaTCHG79o0ez702S_vZ2XtIGGA;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$FileUtils$IcaTCHG79o0ez702S_vZ2XtIGGA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$FileUtils$IcaTCHG79o0ez702S_vZ2XtIGGA;

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

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->lambda$deleteDirectory$0(Ljava/nio/file/Path;)V

    return-void
.end method
