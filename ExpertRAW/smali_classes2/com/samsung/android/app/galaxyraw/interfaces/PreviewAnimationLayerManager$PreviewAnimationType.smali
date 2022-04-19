.class public final enum Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;
.super Ljava/lang/Enum;
.source "PreviewAnimationLayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreviewAnimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

.field public static final enum NONE:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

.field public static final enum PREVIEW_CHANGE:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

.field public static final enum RESUME_CAMERA:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

.field public static final enum SWITCH_FACING:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->NONE:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    const-string v3, "SWITCH_FACING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->SWITCH_FACING:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    const-string v5, "PREVIEW_CHANGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->PREVIEW_CHANGE:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    const-string v7, "RESUME_CAMERA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->RESUME_CAMERA:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    return-object v0
.end method
