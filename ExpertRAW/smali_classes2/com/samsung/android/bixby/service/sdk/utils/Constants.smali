.class public final Lcom/samsung/android/bixby/service/sdk/utils/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final BIXBY_IMAGE_SERVICE_ACTION:Ljava/lang/String; = "bixby.intent.action.BIND_IMAGE_SERVICE"

.field public static final BIXBY_SERVICE_PKG_NAME:Ljava/lang/String; = "com.samsung.android.bixby.service"

.field public static final BIXBY_SUGGESTION_SERVICE_ACTION:Ljava/lang/String; = "bixby.intent.action.BIND_SUGGESTION_SERVICE"

.field public static final BIXBY_TEXT_SERVICE_ACTION:Ljava/lang/String; = "bixby.intent.action.BIND_TEXT_SERVICE"

.field public static final KEY_IMAGE_SERVICE_VERSION:Ljava/lang/String; = "com.samsung.android.bixby.service.image"

.field public static final KEY_SUGGESTION_SERVICE_VERSION:Ljava/lang/String; = "com.samsung.android.bixby.service.suggestion"

.field public static final KEY_TEXT_SERVICE_VERSION:Ljava/lang/String; = "com.samsung.android.bixby.service.text"

.field public static final SERVICE_CONNECT_WAIT_TIME:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/bixby/service/sdk/utils/Constants;->SERVICE_CONNECT_WAIT_TIME:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
