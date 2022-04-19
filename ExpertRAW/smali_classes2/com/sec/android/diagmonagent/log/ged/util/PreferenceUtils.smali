.class public Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;
.super Ljava/lang/Object;
.source "PreferenceUtils.java"


# static fields
.field private static final KEY_CURRENT_VERSION:Ljava/lang/String; = "version"

.field private static final KEY_DEFAULT_MAX_FILE_COUNT:Ljava/lang/String; = "maxFileCount"

.field private static final KEY_DEFAULT_MAX_FILE_SIZE:Ljava/lang/String; = "maxFileSize"

.field private static final KEY_DEFAULT_UPLOAD_FILE:Ljava/lang/String; = "uploadFile"

.field private static final KEY_JWT_TOKEN:Ljava/lang/String; = "JWT_TOKEN"

.field private static final KEY_LAST_PD_UPDATED_TIME:Ljava/lang/String; = "lastPDUpdatedTime"

.field private static final KEY_MAX_FILE_COUNT_VALUE:Ljava/lang/String; = "maxFileCountValue"

.field private static final KEY_MAX_FILE_SIZE_ERROR_CODE:Ljava/lang/String; = "maxFileSizeErrorCode"

.field private static final KEY_MAX_FILE_SIZE_SERVICE_VERSION:Ljava/lang/String; = "maxFileSizeServiceVersion"

.field private static final KEY_MAX_FILE_SIZE_VALUE:Ljava/lang/String; = "maxFileSizeValue"

.field private static final KEY_NEEDED_VERSION:Ljava/lang/String; = "needed_version"

.field private static final KEY_POLLING_INTERVAL:Ljava/lang/String; = "pollingInterval"

.field private static final KEY_REST_IDENTIFIER:Ljava/lang/String; = "REST_IDENTIFIER"

.field private static final KEY_UPLOAD_FILE_ERROR_CODE:Ljava/lang/String; = "uploadFileErrorCode"

.field private static final KEY_UPLOAD_FILE_SERVICE_VERSION:Ljava/lang/String; = "uploadFileServiceVersion"

.field private static final KEY_UPLOAD_FILE_VALUE:Ljava/lang/String; = "uploadFileValue"

.field private static final KEY_VERSION_INFO_URL:Ljava/lang/String; = "version_info_url"

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "DIAGMON_PREFERENCE"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentPolicyVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "version"

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultMaxFileCount(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "maxFileCount"

    const-string v1, "10"

    invoke-static {p0, v0, v1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultMaxFileSize(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "maxFileSize"

    const-string v1, "50"

    invoke-static {p0, v0, v1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultUploadFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "uploadFile"

    const-string v1, "1"

    invoke-static {p0, v0, v1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "key",
            "defaultValue"
        }
    .end annotation

    const-string v0, "DIAGMON_PREFERENCE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "key",
            "defaultValue"
        }
    .end annotation

    const-string v0, "DIAGMON_PREFERENCE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getJwtToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "JWT_TOKEN"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLastPDUpdatedTime(Landroid/content/Context;)J
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "lastPDUpdatedTime"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMaxFileCountValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "maxFileCountValue"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMaxFileSizeErrorCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "maxFileSizeErrorCode"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMaxFileSizeServiceVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "maxFileSizeServiceVersion"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMaxFileSizeValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "maxFileSizeValue"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNeededPolicyVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "needed_version"

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPolicyVersionInfoUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "defaultUrl"
        }
    .end annotation

    const-string v0, "version_info_url"

    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPollingInterval(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "pollingInterval"

    const-string v1, "1"

    invoke-static {p0, v0, v1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRandomDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "REST_IDENTIFIER"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUploadFileErrorCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "uploadFileErrorCode"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUploadFileServiceVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "uploadFileServiceVersion"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUploadFileValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "uploadFileValue"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->getDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initPolicyPreference(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setUploadFileValue(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setUploadFileServiceVersion(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setUploadFileErrorCode(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setMaxFileSizeValue(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setMaxFileSizeServiceVersion(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setMaxFileSizeErrorCode(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setMaxFileCountValue(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static removeDiagmonPreference(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "key"
        }
    .end annotation

    const-string v0, "DIAGMON_PREFERENCE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static removeRandomDeviceId(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "REST_IDENTIFIER"

    invoke-static {p0, v0}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->removeDiagmonPreference(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setCurrentPolicyVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "value"
        }
    .end annotation

    const-string v0, "version"

    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setDefaultMaxFileCount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "value"
        }
    .end annotation

    const-string v0, "maxFileCount"

    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setDefaultMaxFileSize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "value"
        }
    .end annotation

    const-string v0, "maxFileSize"

    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setDefaultUploadFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "value"
        }
    .end annotation

    const-string v0, "uploadFile"

    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "key",
            "value"
        }
    .end annotation

    const-string v0, "DIAGMON_PREFERENCE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "key",
            "value"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " - value is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->d(Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "DIAGMON_PREFERENCE"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setJwtToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "value"
        }
    .end annotation

    const-string v0, "JWT_TOKEN"

    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLastPDUpdatedTime(Landroid/content/Context;J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "value"
        }
    .end annotation

    const-string v0, "lastPDUpdatedTime"

    invoke-static {p0, v0, p1, p2}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static setMaxFileCountValue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "value"
        }
    .end annotation

    const-string v0, "maxFileCountValue"

    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setMaxFileSizeErrorCode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "value"
        }
    .end annotation

    const-string v0, "maxFileSizeErrorCode"

    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setMaxFileSizeServiceVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "value"
        }
    .end annotation

    const-string v0, "maxFileSizeServiceVersion"

    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setMaxFileSizeValue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "value"
        }
    .end annotation

    const-string v0, "maxFileSizeValue"

    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setNeededPolicyVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "value"
        }
    .end annotation

    const-string v0, "needed_version"

    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setPolicyVersionInfoUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "value"
        }
    .end annotation

    const-string v0, "version_info_url"

    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setPollingInterval(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "value"
        }
    .end annotation

    const-string v0, "pollingInterval"

    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setRandomDeviceId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "value"
        }
    .end annotation

    const-string v0, "REST_IDENTIFIER"

    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setUploadFileErrorCode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "value"
        }
    .end annotation

    const-string v0, "uploadFileErrorCode"

    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setUploadFileServiceVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "value"
        }
    .end annotation

    const-string v0, "uploadFileServiceVersion"

    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setUploadFileValue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "value"
        }
    .end annotation

    const-string v0, "uploadFileValue"

    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/ged/util/PreferenceUtils;->setDiagmonPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
