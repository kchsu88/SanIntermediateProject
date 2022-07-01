.class public Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;
.super Ljava/lang/Object;
.source "DownloadModel.java"


# static fields
.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS download_record( id INTEGER PRIMARY KEY AUTOINCREMENT,download_id TEXT,download_url TEXT, resource_url TEXT,etag TEXT, director_path TEXT, file_name TEXT, total_bytes INTEGER, downloaded_bytes INTEGER, last_modified_time INTEGER,download_rate INTEGER,usage_counter INTEGER,download_resource_type INTEGER)"

.field public static final DIRECTORY_PATH:Ljava/lang/String; = "director_path"

.field public static final DOWNLOADED_BYTES:Ljava/lang/String; = "downloaded_bytes"

.field public static final DOWNLOAD_ID:Ljava/lang/String; = "download_id"

.field public static final DOWNLOAD_RATE:Ljava/lang/String; = "download_rate"

.field public static final DOWNLOAD_RESOURCE_TYPE:Ljava/lang/String; = "download_resource_type"

.field public static final DOWNLOAD_URL:Ljava/lang/String; = "download_url"

.field public static final ETAG:Ljava/lang/String; = "etag"

.field public static final FILE_NAME:Ljava/lang/String; = "file_name"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final LAST_MODIFIED_TIME:Ljava/lang/String; = "last_modified_time"

.field public static final RESOURCE_URL:Ljava/lang/String; = "resource_url"

.field public static final TABLE_NAME:Ljava/lang/String; = "download_record"

.field public static final TOTAL_BYTES:Ljava/lang/String; = "total_bytes"

.field public static final USAGE_COUNTER:Ljava/lang/String; = "usage_counter"


# instance fields
.field private downloadId:Ljava/lang/String;

.field private downloadRate:I

.field private downloadResourceType:Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

.field private downloadUrl:Ljava/lang/String;

.field private downloadedBytes:J

.field private etag:Ljava/lang/String;

.field private lastModifiedTime:J

.field private resourceUrl:Ljava/lang/String;

.field private saveDirectorPath:Ljava/lang/String;

.field private saveFileName:Ljava/lang/String;

.field private totalBytes:J

.field private unZipResourceByte:J

.field private unZipResourceDirectory:Ljava/lang/String;

.field private usageCounter:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static create(Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;)Lccsanandroid/content/ContentValues;
    .locals 3

    .line 174
    new-instance v0, Lccsanandroid/content/ContentValues;

    invoke-direct {v0}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 175
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getDownloadId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "download_id"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "download_url"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getResourceUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "resource_url"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getEtag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "etag"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getSaveDirectorPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "director_path"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getSaveFileName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file_name"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getTotalBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "total_bytes"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 182
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getDownloadedBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "downloaded_bytes"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 183
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getLastModifiedTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "last_modified_time"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 184
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getDownloadRate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "download_rate"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getUsageCounter()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "usage_counter"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getDownloadResourceType()Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    move-result-object p0

    iget p0, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;->resourceType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "download_resource_type"

    invoke-virtual {v0, v1, p0}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    return-object v0
.end method

.method public static create(Lccsanandroid/database/Cursor;)Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;
    .locals 3

    .line 157
    new-instance v0, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;-><init>()V

    .line 158
    const-string v1, "download_id"

    invoke-interface {p0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->setDownloadId(Ljava/lang/String;)V

    .line 159
    const-string v1, "download_url"

    invoke-interface {p0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->setDownloadUrl(Ljava/lang/String;)V

    .line 160
    const-string v1, "resource_url"

    invoke-interface {p0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->setResourceUrl(Ljava/lang/String;)V

    .line 161
    const-string v1, "etag"

    invoke-interface {p0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->setEtag(Ljava/lang/String;)V

    .line 162
    const-string v1, "director_path"

    invoke-interface {p0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->setSaveDirectorPath(Ljava/lang/String;)V

    .line 163
    const-string v1, "file_name"

    invoke-interface {p0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->setSaveFileName(Ljava/lang/String;)V

    .line 164
    const-string v1, "total_bytes"

    invoke-interface {p0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->setTotalBytes(J)V

    .line 165
    const-string v1, "downloaded_bytes"

    invoke-interface {p0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->setDownloadedBytes(J)V

    .line 166
    const-string v1, "last_modified_time"

    invoke-interface {p0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->setLastModifiedTime(J)V

    .line 167
    const-string v1, "download_rate"

    invoke-interface {p0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->setDownloadRate(I)V

    .line 168
    const-string v1, "usage_counter"

    invoke-interface {p0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->setUsageCounter(I)V

    .line 169
    const-string v1, "download_resource_type"

    invoke-interface {p0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;->getDownloadResourceType(I)Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    move-result-object p0

    invoke-virtual {v0, p0}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->setDownloadResourceType(Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;)V

    .line 170
    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILccsancom/mbridge/msdk/foundation/download/DownloadResourceType;)Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;
    .locals 1

    .line 138
    new-instance v0, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;-><init>()V

    .line 139
    invoke-virtual {v0, p0}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->setDownloadId(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->setDownloadUrl(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0, p2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->setResourceUrl(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, p3}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->setEtag(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0, p4}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->setSaveDirectorPath(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0, p5}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->setSaveFileName(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0, p8, p9}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->setDownloadedBytes(J)V

    .line 146
    invoke-virtual {v0, p6, p7}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->setTotalBytes(J)V

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->setLastModifiedTime(J)V

    .line 148
    invoke-virtual {v0, p11}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->setUsageCounter(I)V

    .line 149
    invoke-virtual {v0, p10}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->setDownloadRate(I)V

    .line 150
    invoke-virtual {v0, p12}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->setDownloadResourceType(Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;)V

    .line 151
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->setUnZipResourceDirectory(Ljava/lang/String;)V

    .line 152
    const-wide/16 p0, 0x0

    invoke-virtual {v0, p0, p1}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->setUnZipResourceByte(J)V

    .line 153
    return-object v0
.end method


# virtual methods
.method public getDownloadId()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->downloadId:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadRate()I
    .locals 1

    .line 130
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->downloadRate:I

    return v0
.end method

.method public getDownloadResourceType()Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;
    .locals 1

    .line 192
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->downloadResourceType:Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadedBytes()J
    .locals 2

    .line 106
    iget-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->downloadedBytes:J

    return-wide v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifiedTime()J
    .locals 2

    .line 114
    iget-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->lastModifiedTime:J

    return-wide v0
.end method

.method public getResourceUrl()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->resourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveDirectorPath()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->saveDirectorPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveFileName()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->saveFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalBytes()J
    .locals 2

    .line 98
    iget-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->totalBytes:J

    return-wide v0
.end method

.method public getUnZipResourceByte()J
    .locals 2

    .line 208
    iget-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->unZipResourceByte:J

    return-wide v0
.end method

.method public getUnZipResourceDirectory()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->unZipResourceDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getUsageCounter()I
    .locals 1

    .line 122
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->usageCounter:I

    return v0
.end method

.method public setDownloadId(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->downloadId:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setDownloadRate(I)V
    .locals 0

    .line 134
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->downloadRate:I

    .line 135
    return-void
.end method

.method public setDownloadResourceType(Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->downloadResourceType:Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    .line 197
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->downloadUrl:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setDownloadedBytes(J)V
    .locals 0

    .line 110
    iput-wide p1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->downloadedBytes:J

    .line 111
    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->etag:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setLastModifiedTime(J)V
    .locals 0

    .line 118
    iput-wide p1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->lastModifiedTime:J

    .line 119
    return-void
.end method

.method public setResourceUrl(Ljava/lang/String;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->resourceUrl:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setSaveDirectorPath(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->saveDirectorPath:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setSaveFileName(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->saveFileName:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setTotalBytes(J)V
    .locals 0

    .line 102
    iput-wide p1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->totalBytes:J

    .line 103
    return-void
.end method

.method public setUnZipResourceByte(J)V
    .locals 0

    .line 212
    iput-wide p1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->unZipResourceByte:J

    .line 213
    return-void
.end method

.method public setUnZipResourceDirectory(Ljava/lang/String;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->unZipResourceDirectory:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setUsageCounter(I)V
    .locals 0

    .line 126
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->usageCounter:I

    .line 127
    return-void
.end method
