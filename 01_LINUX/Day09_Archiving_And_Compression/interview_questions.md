# Day 09 Interview Questions

## Basic

### Q1 What is Archiving?

Archiving combines multiple files into one file.

### Q2 What is Compression?

Compression reduces file size.

### Q3 Difference between tar and gzip?

tar:

Creates archives.

gzip:

Compresses files.

## Intermediate

### Q1 What is a .tar.gz file?

A tar archive compressed using gzip.

### Q2 Difference between zip and tar?

zip archives and compresses together.

tar archives first and can then be compressed separately.

## Advanced (5+ Years)

### Q1 Production backup size suddenly increased. How would you investigate?

Answer:

- Compare archive sizes.

- Review added files.

- Check log growth.

- Identify large files.

- Validate compression ratio.

### Q2 Jenkins artifacts consume excessive storage. How would you reduce usage?

Answer:

- Compress artifacts.

- Implement retention policies.

- Archive old builds.

- Move artifacts to S3.

### Q3 Backup restoration failed during DR exercise. How do you troubleshoot?

Answer:

- Verify archive integrity.

- Validate extraction process.

- Check file permissions.

- Verify checksums.

- Re-run restore tests.

### Q4 Why must backups be tested regularly?

Answer:

A backup is useless if restoration fails.

Regular recovery testing validates disaster recovery readiness.
