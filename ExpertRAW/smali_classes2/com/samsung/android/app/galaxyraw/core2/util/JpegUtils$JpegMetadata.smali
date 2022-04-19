.class public Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;
.super Ljava/lang/Object;
.source "JpegUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JpegMetadata"
.end annotation


# instance fields
.field private altitude:D

.field private aperture:I

.field private brightness:I

.field private cityID:J

.field private debugInfoApp4:[B

.field private debugInfoApp5:[B

.field private exposureCompensation:F

.field private exposureTime:[I

.field private flashMode:I

.field private fnum:I

.field private focalLength:I

.field private focalLengthIn35mm:I

.field private iso:I

.field private jpegHeight:I

.field private jpegThumbnailHeight:I

.field private jpegThumbnailWidth:I

.field private jpegWidth:I

.field private latitude:D

.field private longitude:D

.field private maxAperture:I

.field private meteringMode:I

.field private orientation:I

.field private sceneCaptureType:I

.field private time:Ljava/lang/String;

.field private uniqueId:Ljava/lang/String;

.field private weather:I

.field private whiteBalanceMode:I

.field private zoomRatio:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->time:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->uniqueId:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->latitude:D

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->longitude:D

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->altitude:D

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->cityID:J

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->maxAperture:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->jpegWidth:I

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->jpegHeight:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->orientation:I

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->jpegThumbnailWidth:I

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->jpegThumbnailHeight:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->whiteBalanceMode:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->flashMode:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->weather:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->iso:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->fnum:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->aperture:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->focalLength:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->focalLengthIn35mm:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->sceneCaptureType:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->meteringMode:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->exposureCompensation:F

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->brightness:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->zoomRatio:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B[BDDDJIIIIIIIIIIIIIIIIFII[I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "_time",
            "_uniqueId",
            "_debugInfoApp4",
            "_debugInfoApp5",
            "_latitude",
            "_longitude",
            "_altitude",
            "_cityID",
            "_maxAperture",
            "_jpegWidth",
            "_jpegHeight",
            "_orientation",
            "_jpegThumbnailWidth",
            "_jpegThumbnailHeight",
            "_whiteBalanceMode",
            "_flashMode",
            "_weather",
            "_iso",
            "_fnum",
            "_aperture",
            "_focalLength",
            "_focalLengthIn35mm",
            "_sceneCaptureType",
            "_meteringMode",
            "_exposureCompensation",
            "_brightness",
            "_zoomRatio",
            "_exposureTime"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->time:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->uniqueId:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->latitude:D

    iput-wide v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->longitude:D

    iput-wide v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->altitude:D

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->cityID:J

    const/high16 v1, -0x80000000

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->maxAperture:I

    const/4 v2, 0x0

    iput v2, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->jpegWidth:I

    iput v2, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->jpegHeight:I

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->orientation:I

    iput v2, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->jpegThumbnailWidth:I

    iput v2, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->jpegThumbnailHeight:I

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->whiteBalanceMode:I

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->flashMode:I

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->weather:I

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->iso:I

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->fnum:I

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->aperture:I

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->focalLength:I

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->focalLengthIn35mm:I

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->sceneCaptureType:I

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->meteringMode:I

    const/4 v2, 0x1

    iput v2, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->exposureCompensation:F

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->brightness:I

    const/4 v1, 0x1

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->zoomRatio:I

    move-object v1, p1

    iput-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->time:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->uniqueId:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->debugInfoApp4:[B

    move-object v1, p4

    iput-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->debugInfoApp5:[B

    move-wide v1, p5

    iput-wide v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->latitude:D

    move-wide v1, p7

    iput-wide v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->longitude:D

    move-wide v1, p9

    iput-wide v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->altitude:D

    move-wide v1, p11

    iput-wide v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->cityID:J

    move/from16 v1, p13

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->maxAperture:I

    move/from16 v1, p14

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->jpegWidth:I

    move/from16 v1, p15

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->jpegHeight:I

    move/from16 v1, p16

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->orientation:I

    move/from16 v1, p17

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->jpegThumbnailWidth:I

    move/from16 v1, p18

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->jpegThumbnailHeight:I

    move/from16 v1, p19

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->whiteBalanceMode:I

    move/from16 v1, p20

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->flashMode:I

    move/from16 v1, p21

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->weather:I

    move/from16 v1, p22

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->iso:I

    move/from16 v1, p23

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->fnum:I

    move/from16 v1, p24

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->aperture:I

    move/from16 v1, p25

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->focalLength:I

    move/from16 v1, p26

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->focalLengthIn35mm:I

    move/from16 v1, p27

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->sceneCaptureType:I

    move/from16 v1, p28

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->meteringMode:I

    move/from16 v1, p29

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->exposureCompensation:F

    move/from16 v1, p30

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->brightness:I

    move/from16 v1, p31

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->zoomRatio:I

    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->exposureTime:[I

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->time:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;)[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->exposureTime:[I

    return-object p0
.end method

.method static synthetic access$1002(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->jpegHeight:I

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->exposureTime:[I

    return-object p1
.end method

.method static synthetic access$1102(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->weather:I

    return p1
.end method

.method static synthetic access$1202(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;J)J
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->cityID:J

    return-wide p1
.end method

.method static synthetic access$1302(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->orientation:I

    return p1
.end method

.method static synthetic access$1402(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->debugInfoApp5:[B

    return-object p1
.end method

.method static synthetic access$1502(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->focalLengthIn35mm:I

    return p1
.end method

.method static synthetic access$1602(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->uniqueId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->meteringMode:I

    return p1
.end method

.method static synthetic access$1802(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->sceneCaptureType:I

    return p1
.end method

.method static synthetic access$1902(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->focalLength:I

    return p1
.end method

.method static synthetic access$2002(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->zoomRatio:I

    return p1
.end method

.method static synthetic access$202(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->maxAperture:I

    return p1
.end method

.method static synthetic access$2102(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->exposureCompensation:F

    return p1
.end method

.method static synthetic access$2202(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->brightness:I

    return p1
.end method

.method static synthetic access$2302(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->fnum:I

    return p1
.end method

.method static synthetic access$2402(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->aperture:I

    return p1
.end method

.method static synthetic access$2502(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->iso:I

    return p1
.end method

.method static synthetic access$2602(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->flashMode:I

    return p1
.end method

.method static synthetic access$2702(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->whiteBalanceMode:I

    return p1
.end method

.method static synthetic access$302(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;D)D
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->latitude:D

    return-wide p1
.end method

.method static synthetic access$402(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;D)D
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->longitude:D

    return-wide p1
.end method

.method static synthetic access$502(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;D)D
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->altitude:D

    return-wide p1
.end method

.method static synthetic access$602(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->debugInfoApp4:[B

    return-object p1
.end method

.method static synthetic access$702(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->jpegThumbnailWidth:I

    return p1
.end method

.method static synthetic access$802(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->jpegThumbnailHeight:I

    return p1
.end method

.method static synthetic access$902(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;->jpegWidth:I

    return p1
.end method
