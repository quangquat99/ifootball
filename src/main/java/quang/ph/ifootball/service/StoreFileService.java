package quang.ph.ifootball.service;

import java.net.MalformedURLException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.time.Instant;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class StoreFileService {
	@Value("${spring.folder_upload_files:}")
	private Path rootLocation;

	public String store(MultipartFile file) {
		long unixTimestamp = Instant.now().getEpochSecond();
		String newFileName = "";
		try {
			newFileName = "" + unixTimestamp + "-" + file.getOriginalFilename();
			Files.copy(file.getInputStream(), this.rootLocation.resolve(newFileName));

		} catch (Exception e) {
			throw new RuntimeException("FAIL!");
		}
		return newFileName;
	}

	public Resource loadFile(String filename) {
		try {
			Path file = rootLocation.resolve(filename);
			Resource resource = new UrlResource(file.toUri());
			if (resource.exists() || resource.isReadable()) {
				return resource;
			} else {
				throw new RuntimeException("FAIL!");
			}
		} catch (MalformedURLException e) {
			throw new RuntimeException("FAIL!");
		}
	}
}
