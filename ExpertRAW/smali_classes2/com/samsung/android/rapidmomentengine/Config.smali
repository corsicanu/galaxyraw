.class public Lcom/samsung/android/rapidmomentengine/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final BITMAP_HEIGHT:I = 0x200

.field public static final BITMAP_WIDTH:I = 0x180

.field public static final BLUR_SCORE_HARD_THRESHOLD_LOWER:I = 0x1f4

.field public static final BLUR_SCORE_HARD_THRESHOLD_UPPER:I = 0x9c4

.field public static final BLUR_SCORE_THRESHOLD_FRONT:I = 0x1f4

.field public static final BLUR_SCORE_THRESHOLD_REAR:I = 0x5dc

.field public static final DEBUG_LOG:Z = true

.field public static final DEFAULT_INTERVAL_SIZE:I = 0xa

.field public static final DUMP_INPUTS:Z = false

.field public static final REJECTION_THRESHOLD_ASYNC:F = 0.55f

.field public static final REJECTION_THRESHOLD_SYNC:F = 0.3f

.field public static final RESIZE_WIDTH:I = 0x200

.field public static final RESULT_DIR:Ljava/lang/String;

.field public static final SAVE_LOGS_FOR_SESSION:Z = true

.field public static final SAVE_RESULTS:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RapidMoments"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rapidmomentengine/Config;->RESULT_DIR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Configuration constants class"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
