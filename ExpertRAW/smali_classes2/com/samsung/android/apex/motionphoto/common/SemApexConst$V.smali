.class public final Lcom/samsung/android/apex/motionphoto/common/SemApexConst$V;
.super Ljava/lang/Object;
.source "SemApexConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/apex/motionphoto/common/SemApexConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "V"
.end annotation


# static fields
.field public static final APEXSERVICE_UID:Ljava/lang/String; = "android.uid.system"

.field public static final APEX_APP_PACKAGE:Ljava/lang/String; = "com.sec.android.app.apex"

.field public static final APEX_MOTIONPHOTO_VIEWER_NAME:Ljava/lang/String; = "com.sec.android.app.apex.player.PlayerActivity"

.field public static final APEX_NATIVE_LIB:Ljava/lang/String; = "apex_jni.media.samsung"

.field public static final APEX_SERVICE_NAME:Ljava/lang/String; = "com.sec.android.app.apex.service.ApexService"

.field public static final CAMERA_OUTPUT_DIR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/common/SemApexConst$V;->CAMERA_OUTPUT_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
