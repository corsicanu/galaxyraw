.class public final enum Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehType;
.super Ljava/lang/Enum;
.source "LiveFocusUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BokehType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehType;

.field public static final enum DUAL_BOKEH:Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehType;

.field public static final enum SINGLE_BOKEH:Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehType;

.field public static final enum VIDEO_BOKEH:Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehType;

    const-string v1, "SINGLE_BOKEH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehType;->SINGLE_BOKEH:Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehType;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehType;

    const-string v3, "DUAL_BOKEH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehType;->DUAL_BOKEH:Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehType;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehType;

    const-string v5, "VIDEO_BOKEH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehType;->VIDEO_BOKEH:Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehType;->$VALUES:[Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehType;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehType;->$VALUES:[Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/util/LiveFocusUtil$BokehType;

    return-object v0
.end method
