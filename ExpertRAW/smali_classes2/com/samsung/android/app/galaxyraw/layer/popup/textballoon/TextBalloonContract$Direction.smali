.class public final enum Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;
.super Ljava/lang/Enum;
.source "TextBalloonContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

.field public static final enum BOTTOM:Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

.field public static final enum LEFT:Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

.field public static final enum RIGHT:Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

.field public static final enum TOP:Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;->TOP:Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

    const-string v3, "RIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;->RIGHT:Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

    const-string v5, "BOTTOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;->BOTTOM:Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

    const-string v7, "LEFT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;->LEFT:Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;->$VALUES:[Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;->$VALUES:[Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

    return-object v0
.end method
