.class public final enum Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;
.super Ljava/lang/Enum;
.source "PopupLayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PopupId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

.field public static final enum FOCUS_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

.field public static final enum INTELLIGENT_TIPS:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

.field public static final enum LAUNCH_ZOOM_BAR_TIPS:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

.field public static final enum QUICK_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

.field public static final enum SHUTTER_SPEED_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

.field public static final enum ZOOM_IN_MIC_TIPS:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;


# instance fields
.field private mStyle:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;->INTELLIGENT_TIPS:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;

    const-string v2, "INTELLIGENT_TIPS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;-><init>(Ljava/lang/String;ILcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->INTELLIGENT_TIPS:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;->TEXT_BALLOON:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;

    const-string v4, "LAUNCH_ZOOM_BAR_TIPS"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;-><init>(Ljava/lang/String;ILcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->LAUNCH_ZOOM_BAR_TIPS:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;->TEXT_BALLOON:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;

    const-string v6, "ZOOM_IN_MIC_TIPS"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;-><init>(Ljava/lang/String;ILcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->ZOOM_IN_MIC_TIPS:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;->TOAST:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;

    const-string v8, "QUICK_SETTING"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;-><init>(Ljava/lang/String;ILcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;)V

    sput-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->QUICK_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    new-instance v6, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    sget-object v8, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;->TOAST:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;

    const-string v10, "SHUTTER_SPEED_GUIDE"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;-><init>(Ljava/lang/String;ILcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;)V

    sput-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->SHUTTER_SPEED_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    new-instance v8, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    sget-object v10, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;->TOAST:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;

    const-string v12, "FOCUS_GUIDE"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;-><init>(Ljava/lang/String;ILcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;)V

    sput-object v8, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->FOCUS_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    const/4 v10, 0x6

    new-array v10, v10, [Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    aput-object v0, v10, v3

    aput-object v1, v10, v5

    aput-object v2, v10, v7

    aput-object v4, v10, v9

    aput-object v6, v10, v11

    aput-object v8, v10, v13

    sput-object v10, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "style"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->mStyle:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    return-object v0
.end method


# virtual methods
.method public getPopupStyle()Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->mStyle:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupStyle;

    return-object p0
.end method
