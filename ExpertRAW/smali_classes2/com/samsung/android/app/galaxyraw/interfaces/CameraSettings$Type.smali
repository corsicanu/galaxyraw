.class public final enum Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;
.super Ljava/lang/Enum;
.source "CameraSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;

.field public static final enum LOCAL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;

.field public static final enum MANUAL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;

.field public static final enum PREFERENCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;

.field public static final enum REPRESENTATIVE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;

    const-string v1, "LOCAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;->LOCAL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;

    const-string v3, "MANUAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;->MANUAL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;

    const-string v5, "PREFERENCE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;->PREFERENCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;

    const-string v7, "REPRESENTATIVE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;->REPRESENTATIVE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;

    return-object v0
.end method
